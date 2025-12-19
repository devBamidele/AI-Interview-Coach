import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'network_interceptors.dart';

part 'network_request.g.dart';

@riverpod
NetworkRequest networkRequest(_) => NetworkRequestImpl();

abstract class NetworkRequest {
  Future<Response> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  });

  Future<Response> post(
    String url, {
    Map<String, String>? headers,
    Object? body,
  });
}

class NetworkRequestImpl implements NetworkRequest {
  final Dio _dio;

  NetworkRequestImpl()
    : _dio = Dio(
        BaseOptions(
          connectTimeout: const Duration(seconds: 30),
          receiveTimeout: const Duration(seconds: 30),
          sendTimeout: const Duration(seconds: 30),
          validateStatus: (status) =>
              status != null && status >= 200 && status < 300,
        ),
      ) {
    // Add the interceptors to the dio instance
    _dio.interceptors.addAll([
      AuthInterceptor(),
      RefreshTokenInterceptor(_dio),
      ErrorInterceptor(),
      if (kDebugMode) loggerInterceptor,
    ]);
  }

  @override
  Future<Response> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) {
    return _dio.get(
      url,
      queryParameters: queryParameters,
      options: Options(headers: headers),
    );
  }

  @override
  Future<Response> post(
    String url, {
    Map<String, String>? headers,
    Object? body,
  }) {
    return _dio.post(
      url,
      data: body,
      options: Options(headers: headers),
    );
  }
}

extension ResponseExtension on Response {
  bool get isSuccess =>
      statusCode != null && statusCode! >= 200 && statusCode! < 300;
}
