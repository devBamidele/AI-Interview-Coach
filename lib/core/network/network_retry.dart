import 'dart:async';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:retry/retry.dart';

part 'network_retry.g.dart';

@riverpod
NetworkRetry networkRetry(Ref ref) => NetworkRetryImpl();

abstract class NetworkRetry {
  Future<T> networkRetry<T>(FutureOr<T> Function() function);
}

class NetworkRetryImpl implements NetworkRetry {
  @override
  Future<T> networkRetry<T>(FutureOr<T> Function() function) {
    return retry(
      function,
      retryIf: (e) =>
          e is TimeoutException ||
          (e is DioException && e.type == DioExceptionType.connectionTimeout),
      maxAttempts: 3,
      delayFactor: const Duration(seconds: 1),
      maxDelay: const Duration(seconds: 5),
    );
  }
}
