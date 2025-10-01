// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transcription_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider for transcription repository

@ProviderFor(transcriptionRepository)
const transcriptionRepositoryProvider = TranscriptionRepositoryProvider._();

/// Provider for transcription repository

final class TranscriptionRepositoryProvider
    extends
        $FunctionalProvider<
          TranscriptionRepository,
          TranscriptionRepository,
          TranscriptionRepository
        >
    with $Provider<TranscriptionRepository> {
  /// Provider for transcription repository
  const TranscriptionRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'transcriptionRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$transcriptionRepositoryHash();

  @$internal
  @override
  $ProviderElement<TranscriptionRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TranscriptionRepository create(Ref ref) {
    return transcriptionRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TranscriptionRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TranscriptionRepository>(value),
    );
  }
}

String _$transcriptionRepositoryHash() =>
    r'f81452f88610ff0c9d4438fca7db4ee3739c5165';

/// Notifier for managing transcription state

@ProviderFor(TranscriptionNotifier)
const transcriptionProvider = TranscriptionNotifierProvider._();

/// Notifier for managing transcription state
final class TranscriptionNotifierProvider
    extends $NotifierProvider<TranscriptionNotifier, TranscriptionState> {
  /// Notifier for managing transcription state
  const TranscriptionNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'transcriptionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$transcriptionNotifierHash();

  @$internal
  @override
  TranscriptionNotifier create() => TranscriptionNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TranscriptionState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TranscriptionState>(value),
    );
  }
}

String _$transcriptionNotifierHash() =>
    r'3f18deaac29f9e4d8f31918c9e565ce89344e68d';

/// Notifier for managing transcription state

abstract class _$TranscriptionNotifier extends $Notifier<TranscriptionState> {
  TranscriptionState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<TranscriptionState, TranscriptionState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<TranscriptionState, TranscriptionState>,
              TranscriptionState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
