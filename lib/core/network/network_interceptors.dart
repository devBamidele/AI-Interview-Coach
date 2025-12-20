import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../features/auth/application/auth_manager.dart';
import '../api/endpoints.dart';

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.type == DioExceptionType.connectionError) {
      handler.reject(
        DioException(
          requestOptions: err.requestOptions,
          type: err.type,
          error: err.error,
        ),
      );
    } else {
      handler.next(err); // pass through others
    }
  }
}

final loggerInterceptor = PrettyDioLogger(
  requestHeader: true,
  requestBody: true,
);

class AuthInterceptor extends Interceptor {
  final AuthManager authManager;

  AuthInterceptor(this.authManager);

  @override
  void onRequest(options, handler) async {
    if (options.uri.toString().startsWith(Endpoints.base)) {
      final accessToken = authManager.accessToken;

      if (accessToken != null) {
        options.headers['Authorization'] = 'Bearer $accessToken';
      }
    }

    handler.next(options);
  }
}

class RefreshTokenInterceptor extends Interceptor {
  final Dio _dio;
  final AuthManager authManager;

  RefreshTokenInterceptor(this._dio, this.authManager);

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    final statusCode = err.response?.statusCode;

    // Only handle 401 errors
    if (statusCode == 401) {
      try {
        final refreshToken = authManager.refreshToken;

        if (refreshToken == null) {
          throw Exception('No refresh token available');
        }

        // Request new access token
        final response = await _dio.post(
          Endpoints.refreshToken,
          data: {'refreshToken': refreshToken},
        );

        final newAccessToken = response.data['accessToken'];
        await authManager.saveAccessToken(newAccessToken);

        // Retry the original request
        final options = err.requestOptions;
        options.headers['Authorization'] = 'Bearer $newAccessToken';

        final clonedRequest = await _dio.request(
          options.path,
          options: Options(method: options.method, headers: options.headers),
          data: options.data,
          queryParameters: options.queryParameters,
        );

        return handler.resolve(clonedRequest);
      } catch (e) {
        // Clear auth if refresh fails
        await authManager.clearAuthenticatedUser();
        return handler.next(err);
      }
    }

    handler.next(err); // pass through other errors
  }
}
