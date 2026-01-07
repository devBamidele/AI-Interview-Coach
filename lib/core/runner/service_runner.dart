import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../error/exceptions.dart';
import '../error/failures.dart';
import '../network/network_info.dart';

class ServiceRunner {
  final NetworkInfo networkInfo;

  ServiceRunner(this.networkInfo);

  Future<Either<Failure, T>> run<T>(
    Future<T> Function() action, {
    required String errorTitle,
  }) async {
    if (!await networkInfo.isConnected) {
      return const Left(NetworkFailure('No internet connection'));
    }

    try {
      final result = await action();
      return Right(result);
    } on GoogleSignInException catch (e) {
      // Handle Google Sign-In cancellation silently
      // Check for both canceled code and "Cancelled by user" in error message
      if (e.code == GoogleSignInExceptionCode.canceled ||
          e.toString().contains('Cancelled by user')) {
        return const Left(CancellationFailure('Sign in was cancelled'));
      }
      return Left(UnexpectedFailure(e.toString()));
    } on PlatformException catch (e) {
      // Handle other platform exceptions
      if (e.code == 'sign_in_canceled' || e.code == 'sign_in_failed') {
        return Left(CancellationFailure(e.message ?? 'Sign in was cancelled'));
      }
      return Left(UnexpectedFailure(e.message ?? 'Platform error occurred'));
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on DioException catch (e) {
      return Left(_handleDioError(e, errorTitle));
    } on SocketException {
      return const Left(
        NetworkFailure('Connection failed. Check your internet connection.'),
      );
    } on FormatException catch (e) {
      return Left(DataParsingFailure(e.message));
    } catch (e) {
      return Left(UnexpectedFailure(_formatException(e)));
    }
  }

  Failure _handleDioError(DioException e, String title) {
    final data = e.response?.data;
    final statusCode = e.response?.statusCode;
    final message = data is Map
        ? (data['message'] ?? 'Unknown error')
        : 'Unknown error';

    switch (e.type) {
      case DioExceptionType.badResponse:
        return _handleHttpError(statusCode, message);
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const NetworkFailure('Request timeout. Please try again.');
      case DioExceptionType.connectionError:
        return const NetworkFailure('Connection failed. Check your internet.');
      case DioExceptionType.cancel:
        return const NetworkFailure('Request was cancelled.');
      default:
        return const NetworkFailure(
          'Server unreachable. Please try again later.',
        );
    }
  }

  Failure _handleHttpError(int? statusCode, String message) {
    if (statusCode == null) {
      return ServerFailure(message);
    }

    switch (statusCode) {
      case 401:
      case 403:
        return ServerFailure(message);
      case 400:
      case 422:
        return ServerFailure(message);
      case 404:
        return ServerFailure(message);
      case 409:
        return AccountExistsFailure(message);
      case 429:
        return const ServerFailure(
          'Too many requests. Please wait and try again.',
        );
      case 500:
      case 502:
      case 503:
      case 504:
        return const ServerFailure('Server error. Please try again later.');
      default:
        return statusCode >= 500
            ? const ServerFailure('Server error. Please try again later.')
            : ServerFailure(message);
    }
  }

  String _formatException(Object e) =>
      e.toString().replaceFirst('Exception: ', '').trim();
}
