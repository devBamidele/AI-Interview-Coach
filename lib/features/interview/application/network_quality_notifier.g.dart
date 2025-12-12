// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_quality_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider for the network quality datasource

@ProviderFor(networkQualityDataSource)
const networkQualityDataSourceProvider = NetworkQualityDataSourceProvider._();

/// Provider for the network quality datasource

final class NetworkQualityDataSourceProvider
    extends
        $FunctionalProvider<
          NetworkQualityDataSource,
          NetworkQualityDataSource,
          NetworkQualityDataSource
        >
    with $Provider<NetworkQualityDataSource> {
  /// Provider for the network quality datasource
  const NetworkQualityDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'networkQualityDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$networkQualityDataSourceHash();

  @$internal
  @override
  $ProviderElement<NetworkQualityDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  NetworkQualityDataSource create(Ref ref) {
    return networkQualityDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NetworkQualityDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NetworkQualityDataSource>(value),
    );
  }
}

String _$networkQualityDataSourceHash() =>
    r'5eb7cb46626a50d299425f7d12c11a334566a971';

/// Provider for the network quality repository

@ProviderFor(networkQualityRepository)
const networkQualityRepositoryProvider = NetworkQualityRepositoryProvider._();

/// Provider for the network quality repository

final class NetworkQualityRepositoryProvider
    extends
        $FunctionalProvider<
          NetworkQualityRepository,
          NetworkQualityRepository,
          NetworkQualityRepository
        >
    with $Provider<NetworkQualityRepository> {
  /// Provider for the network quality repository
  const NetworkQualityRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'networkQualityRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$networkQualityRepositoryHash();

  @$internal
  @override
  $ProviderElement<NetworkQualityRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  NetworkQualityRepository create(Ref ref) {
    return networkQualityRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NetworkQualityRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NetworkQualityRepository>(value),
    );
  }
}

String _$networkQualityRepositoryHash() =>
    r'3d2f613573ba42b672c8ea4ec47c3e52971b97da';

/// Notifier that manages network quality monitoring during interviews

@ProviderFor(NetworkQualityNotifier)
const networkQualityProvider = NetworkQualityNotifierProvider._();

/// Notifier that manages network quality monitoring during interviews
final class NetworkQualityNotifierProvider
    extends $NotifierProvider<NetworkQualityNotifier, NetworkQualityState> {
  /// Notifier that manages network quality monitoring during interviews
  const NetworkQualityNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'networkQualityProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$networkQualityNotifierHash();

  @$internal
  @override
  NetworkQualityNotifier create() => NetworkQualityNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NetworkQualityState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NetworkQualityState>(value),
    );
  }
}

String _$networkQualityNotifierHash() =>
    r'561deb07b8d444050ce6cc16918052c3b5200803';

/// Notifier that manages network quality monitoring during interviews

abstract class _$NetworkQualityNotifier extends $Notifier<NetworkQualityState> {
  NetworkQualityState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<NetworkQualityState, NetworkQualityState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<NetworkQualityState, NetworkQualityState>,
              NetworkQualityState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
