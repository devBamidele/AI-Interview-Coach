import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'device_id_manager.g.dart';

/// Manages persistent device ID for anonymous users
/// Device ID is stored in secure storage and survives app restarts
/// Only cleared when app is deleted from device
class DeviceIdManager {
  final FlutterSecureStorage _storage;
  static const String _deviceIdKey = 'anonymous_device_id';
  static const _uuid = Uuid();

  DeviceIdManager(this._storage);

  /// Get existing device ID or create new one if doesn't exist
  /// Returns persistent UUID that survives app restarts
  Future<String> getOrCreateDeviceId() async {
    final existingId = await _storage.read(key: _deviceIdKey);
    if (existingId != null && existingId.isNotEmpty) {
      return existingId;
    }

    final newId = _uuid.v4();
    await _storage.write(key: _deviceIdKey, value: newId);
    return newId;
  }

  /// Get device ID without creating new one
  /// Returns null if no device ID exists
  Future<String?> getDeviceId() async {
    return await _storage.read(key: _deviceIdKey);
  }

  /// Clear device ID (only used for testing or account upgrade)
  Future<void> clearDeviceId() async {
    await _storage.delete(key: _deviceIdKey);
  }
}

@Riverpod(keepAlive: true)
DeviceIdManager deviceIdManager(Ref ref) {
  const storage = FlutterSecureStorage();
  return DeviceIdManager(storage);
}
