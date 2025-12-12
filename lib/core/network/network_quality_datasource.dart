import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dart_ping/dart_ping.dart';

/// Abstract interface for network quality data operations
abstract class NetworkQualityDataSource {
  /// Measures latency to a server by performing a ping
  Future<int?> measureLatency(String host);

  /// Gets the current connection type (WiFi, Mobile, Ethernet, etc.)
  Future<ConnectivityResult> getConnectionType();
}

/// Implementation of NetworkQualityDataSource using dart_ping and connectivity_plus
class NetworkQualityDataSourceImpl implements NetworkQualityDataSource {
  final Connectivity _connectivity;

  NetworkQualityDataSourceImpl({Connectivity? connectivity})
      : _connectivity = connectivity ?? Connectivity();

  @override
  Future<int?> measureLatency(String host) async {
    try {
      // Parse the host to handle URLs
      String pingHost = _extractHostFromUrl(host);

      // Perform a single ping with 5 second timeout
      final ping = Ping(
        pingHost,
        count: 1,
        timeout: 5,
      );

      // Wait for the first response
      final response = await ping.stream.first;

      if (response.error != null) {
        return null;
      }

      // Return latency in milliseconds
      return response.response?.time?.inMilliseconds;
    } catch (e) {
      // If ping fails, return null
      return null;
    }
  }

  @override
  Future<ConnectivityResult> getConnectionType() async {
    try {
      final results = await _connectivity.checkConnectivity();
      // Return the first result, or none if empty
      return results.isNotEmpty ? results.first : ConnectivityResult.none;
    } catch (e) {
      return ConnectivityResult.none;
    }
  }

  /// Extracts the host from a URL string
  /// Examples:
  /// - "http://localhost:3000" -> "localhost"
  /// - "https://example.com/path" -> "example.com"
  /// - "example.com" -> "example.com"
  String _extractHostFromUrl(String url) {
    try {
      // Try to parse as URI
      final uri = Uri.parse(url);
      if (uri.hasScheme) {
        return uri.host;
      }
      // If no scheme, return as-is (might be just a hostname)
      return url.split(':').first; // Remove port if present
    } catch (e) {
      // If parsing fails, return the original
      return url;
    }
  }
}
