import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
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
        if (kDebugMode) {
          print('[AuthInterceptor] Added Authorization header for ${options.uri}');
        }
      } else {
        if (kDebugMode) {
          print('[AuthInterceptor] WARNING: No access token available for ${options.uri}');
        }
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
    final requestPath = err.requestOptions.path;

    // Only handle 401 errors, but SKIP if this IS the refresh endpoint
    // to prevent infinite loops
    if (statusCode == 401 && !requestPath.contains('/api/auth/refresh')) {
      try {
        final refreshToken = authManager.refreshToken;

        if (refreshToken == null) {
          if (kDebugMode) {
            print('[RefreshTokenInterceptor] No refresh token available, clearing auth');
          }
          throw Exception('No refresh token available');
        }

        if (kDebugMode) {
          print('[RefreshTokenInterceptor] Attempting to refresh access token');
        }

        // Request new access token
        final response = await _dio.post(
          Endpoints.refreshToken,
          data: {'refreshToken': refreshToken},
        );

        final newAccessToken = response.data['accessToken'];
        await authManager.saveAccessToken(newAccessToken);

        if (kDebugMode) {
          print('[RefreshTokenInterceptor] Successfully refreshed token, retrying original request');
        }

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
        if (kDebugMode) {
          print('[RefreshTokenInterceptor] Refresh failed: $e - clearing authentication');
        }
        await authManager.clearAuthenticatedUser();
        return handler.next(err);
      }
    }

    handler.next(err); // pass through other errors
  }
}
