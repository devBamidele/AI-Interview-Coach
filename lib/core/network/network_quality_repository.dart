import 'package:dartz/dartz.dart';
import 'package:rehearsecoach/core/error/failures.dart';
import 'package:rehearsecoach/core/network/network_quality.dart';
import 'package:rehearsecoach/core/network/network_quality_datasource.dart';

/// Abstract repository interface for network quality operations
abstract class NetworkQualityRepository {
  /// Gets current network quality metrics including connection type and latency
  Future<Either<Failure, NetworkQualityMetrics>> getNetworkMetrics({
    required String serverUrl,
    required NetworkQualityLevel currentLevel,
  });
}

/// Implementation of NetworkQualityRepository
class NetworkQualityRepositoryImpl implements NetworkQualityRepository {
  final NetworkQualityDataSource _dataSource;

  NetworkQualityRepositoryImpl({
    required NetworkQualityDataSource dataSource,
  }) : _dataSource = dataSource;

  @override
  Future<Either<Failure, NetworkQualityMetrics>> getNetworkMetrics({
    required String serverUrl,
    required NetworkQualityLevel currentLevel,
  }) async {
    try {
      // Get connection type
      final connectionType = await _dataSource.getConnectionType();

      // Measure latency (this can fail, so we handle it gracefully)
      final latencyMs = await _dataSource.measureLatency(serverUrl);

      // Create metrics with current LiveKit quality level
      final metrics = NetworkQualityMetrics(
        level: currentLevel,
        connectionType: connectionType,
        latencyMs: latencyMs,
        timestamp: DateTime.now(),
      );

      return Right(metrics);
    } catch (e) {
      return Left(NetworkFailure('Failed to get network metrics: $e'));
    }
  }
}
