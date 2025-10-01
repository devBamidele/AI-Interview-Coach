/// Base exception class for all custom exceptions
abstract class AppException implements Exception {
  final String message;
  const AppException(this.message);

  @override
  String toString() => message;
}

/// Exception thrown when server returns an error
class ServerException extends AppException {
  const ServerException(super.message);
}

/// Exception thrown when there's a network connectivity issue
class NetworkException extends AppException {
  const NetworkException(super.message);
}

/// Exception thrown when caching fails
class CacheException extends AppException {
  const CacheException(super.message);
}

/// Exception thrown when data format is invalid
class FormatException extends AppException {
  const FormatException(super.message);
}
