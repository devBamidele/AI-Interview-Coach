// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_id_manager.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(deviceIdManager)
const deviceIdManagerProvider = DeviceIdManagerProvider._();

final class DeviceIdManagerProvider
    extends
        $FunctionalProvider<DeviceIdManager, DeviceIdManager, DeviceIdManager>
    with $Provider<DeviceIdManager> {
  const DeviceIdManagerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'deviceIdManagerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$deviceIdManagerHash();

  @$internal
  @override
  $ProviderElement<DeviceIdManager> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  DeviceIdManager create(Ref ref) {
    return deviceIdManager(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DeviceIdManager value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DeviceIdManager>(value),
    );
  }
}

String _$deviceIdManagerHash() => r'9c3f806084985fec41f36cd6e58dc422df48ab92';
