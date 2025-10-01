// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'livekit_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(liveKitRepository)
const liveKitRepositoryProvider = LiveKitRepositoryProvider._();

final class LiveKitRepositoryProvider
    extends
        $FunctionalProvider<
          LiveKitRepository,
          LiveKitRepository,
          LiveKitRepository
        >
    with $Provider<LiveKitRepository> {
  const LiveKitRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'liveKitRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$liveKitRepositoryHash();

  @$internal
  @override
  $ProviderElement<LiveKitRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  LiveKitRepository create(Ref ref) {
    return liveKitRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LiveKitRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LiveKitRepository>(value),
    );
  }
}

String _$liveKitRepositoryHash() => r'4e81e47bed36944392ce622e551a8d8c5c7913fb';
