// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interview_token_store.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(interviewTokenStore)
const interviewTokenStoreProvider = InterviewTokenStoreProvider._();

final class InterviewTokenStoreProvider
    extends
        $FunctionalProvider<
          InterviewTokenStore,
          InterviewTokenStore,
          InterviewTokenStore
        >
    with $Provider<InterviewTokenStore> {
  const InterviewTokenStoreProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'interviewTokenStoreProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$interviewTokenStoreHash();

  @$internal
  @override
  $ProviderElement<InterviewTokenStore> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  InterviewTokenStore create(Ref ref) {
    return interviewTokenStore(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(InterviewTokenStore value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<InterviewTokenStore>(value),
    );
  }
}

String _$interviewTokenStoreHash() =>
    r'c8d5539d60f5173fc95960cbcce0bed750a4d236';
