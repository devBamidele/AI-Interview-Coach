// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_retry.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(networkRetry)
const networkRetryProvider = NetworkRetryProvider._();

final class NetworkRetryProvider
    extends $FunctionalProvider<NetworkRetry, NetworkRetry, NetworkRetry>
    with $Provider<NetworkRetry> {
  const NetworkRetryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'networkRetryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$networkRetryHash();

  @$internal
  @override
  $ProviderElement<NetworkRetry> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  NetworkRetry create(Ref ref) {
    return networkRetry(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NetworkRetry value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NetworkRetry>(value),
    );
  }
}

String _$networkRetryHash() => r'f4393b4ad7d37bc02df82bd08609a0fd39f4d0a8';
