/// Base class for all failures in the application
abstract class Failure {
  final String message;

  const Failure(this.message);

  @override
  String toString() => message;
}

/// Failure when a network operation fails
class NetworkFailure extends Failure {
  const NetworkFailure([super.message = 'Network error occurred']);
}

/// Failure when a server returns an error
class ServerFailure extends Failure {
  const ServerFailure([super.message = 'Server error occurred']);
}

/// Failure when WebSocket connection fails
class WebSocketFailure extends Failure {
  const WebSocketFailure([super.message = 'WebSocket error occurred']);
}

/// Failure when data parsing fails
class DataParsingFailure extends Failure {
  const DataParsingFailure([super.message = 'Failed to parse data']);
}

/// Failure for unexpected errors
class UnexpectedFailure extends Failure {
  const UnexpectedFailure([super.message = 'An unexpected error occurred']);
}

/// Failure when user cancels an operation (e.g., Google Sign-In)
class CancellationFailure extends Failure {
  const CancellationFailure([super.message = 'Operation was cancelled']);
}
