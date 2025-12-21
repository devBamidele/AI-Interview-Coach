// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'livekit_remote_datasource.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(liveKitRemoteDataSource)
const liveKitRemoteDataSourceProvider = LiveKitRemoteDataSourceProvider._();

final class LiveKitRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          LiveKitRemoteDataSource,
          LiveKitRemoteDataSource,
          LiveKitRemoteDataSource
        >
    with $Provider<LiveKitRemoteDataSource> {
  const LiveKitRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'liveKitRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$liveKitRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<LiveKitRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  LiveKitRemoteDataSource create(Ref ref) {
    return liveKitRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LiveKitRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LiveKitRemoteDataSource>(value),
    );
  }
}

String _$liveKitRemoteDataSourceHash() =>
    r'9b60bb6717ed15ca999c0b65f9524daeb2613b4a';
