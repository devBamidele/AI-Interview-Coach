import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../error/exceptions.dart';
import '../error/failure.dart';
import '../network/network_info.dart';

class ServiceRunner {
  final NetworkInfo networkInfo;

  ServiceRunner(this.networkInfo);

  Future<Either<Failure, T>> run<T>(
    Future<T> Function() action, {
    required String errorTitle,
  }) async {
    if (!await networkInfo.isConnected) {
      return Left(Failure.network(message: 'No internet connection'));
    }

    try {
      final result = await action();
      return Right(result);
    } on ServerException catch (e) {
      return Left(Failure.token(message: e.message));
    } on DioException catch (e) {
      return Left(_handleDioError(e, errorTitle));
    } on SocketException {
      return Left(Failure.network(
          message: 'Connection failed. Check your internet connection.'));
    } on FormatException catch (e) {
      return Left(Failure.token(message: e.message));
    } catch (e) {
      return Left(Failure.token(message: _formatException(e)));
    }
  }

  Failure _handleDioError(DioException e, String title) {
    final data = e.response?.data;
    final statusCode = e.response?.statusCode;
    final message = data is Map ? (data['message'] ?? 'Unknown error') : 'Unknown error';

    switch (e.type) {
      case DioExceptionType.badResponse:
        return _handleHttpError(statusCode, message);
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return Failure.network(message: 'Request timeout. Please try again.');
      case DioExceptionType.connectionError:
        return Failure.network(
            message: 'Connection failed. Check your internet.');
      case DioExceptionType.cancel:
        return Failure.connection(message: 'Request was cancelled.');
      default:
        return Failure.network(
            message: 'Server unreachable. Please try again later.');
    }
  }

  Failure _handleHttpError(int? statusCode, String message) {
    if (statusCode == null) {
      return Failure.token(message: message);
    }

    switch (statusCode) {
      case 401:
      case 403:
        return Failure.token(message: message);
      case 400:
      case 422:
        return Failure.token(message: message);
      case 404:
        return Failure.token(message: 'Resource not found');
      case 429:
        return Failure.token(
            message: 'Too many requests. Please wait and try again.');
      case 500:
      case 502:
      case 503:
      case 504:
        return Failure.connection(
            message: 'Server error. Please try again later.');
      default:
        return statusCode >= 500
            ? Failure.connection(
                message: 'Server error. Please try again later.')
            : Failure.token(message: message);
    }
  }

  String _formatException(Object e) =>
      e.toString().replaceFirst('Exception: ', '').trim();
}
