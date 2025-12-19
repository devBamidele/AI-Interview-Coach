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
  @override
  void onRequest(options, handler) async {
    if (options.uri.toString().startsWith(Endpoints.base)) {
      final accessToken = AuthManager.instance.accessToken;

      if (accessToken != null) {
        options.headers['Authorization'] = 'Bearer $accessToken';
      }
    }

    handler.next(options);
  }
}

class RefreshTokenInterceptor extends Interceptor {
  final Dio _dio;

  RefreshTokenInterceptor(this._dio);

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    final statusCode = err.response?.statusCode;

    // Only handle 401 errors
    if (statusCode == 401) {
      try {
        final refreshToken = AuthManager.instance.refreshToken;

        if (refreshToken == null) {
          throw Exception('No refresh token available');
        }

        // Request new access token
        final response = await _dio.post(
          Endpoints.refreshToken,
          data: {'refreshToken': refreshToken},
        );

        final newAccessToken = response.data['accessToken'];
        await AuthManager.instance.saveAccessToken(newAccessToken);

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
        await AuthManager.instance.clearAuthenticatedUser();
        return handler.next(err);
      }
    }

    handler.next(err); // pass through other errors
  }
}
