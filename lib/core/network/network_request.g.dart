// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_request.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(networkRequest)
const networkRequestProvider = NetworkRequestProvider._();

final class NetworkRequestProvider
    extends $FunctionalProvider<NetworkRequest, NetworkRequest, NetworkRequest>
    with $Provider<NetworkRequest> {
  const NetworkRequestProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'networkRequestProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$networkRequestHash();

  @$internal
  @override
  $ProviderElement<NetworkRequest> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  NetworkRequest create(Ref ref) {
    return networkRequest(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NetworkRequest value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NetworkRequest>(value),
    );
  }
}

String _$networkRequestHash() => r'acd53f0ddd73338f9db6aabf24d20fe87a5cf77c';
