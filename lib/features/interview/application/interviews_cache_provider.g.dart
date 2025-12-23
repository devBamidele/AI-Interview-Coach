// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interviews_cache_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Cache provider for storing fetched interviews to avoid duplicate API calls
/// Maps interview ID to UserInterview entity

@ProviderFor(InterviewsCache)
const interviewsCacheProvider = InterviewsCacheProvider._();

/// Cache provider for storing fetched interviews to avoid duplicate API calls
/// Maps interview ID to UserInterview entity
final class InterviewsCacheProvider
    extends $NotifierProvider<InterviewsCache, Map<String, UserInterview>> {
  /// Cache provider for storing fetched interviews to avoid duplicate API calls
  /// Maps interview ID to UserInterview entity
  const InterviewsCacheProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'interviewsCacheProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$interviewsCacheHash();

  @$internal
  @override
  InterviewsCache create() => InterviewsCache();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Map<String, UserInterview> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Map<String, UserInterview>>(value),
    );
  }
}

String _$interviewsCacheHash() => r'dff0c8109183a38a7025e0e8351ca695a2cf852c';

/// Cache provider for storing fetched interviews to avoid duplicate API calls
/// Maps interview ID to UserInterview entity

abstract class _$InterviewsCache extends $Notifier<Map<String, UserInterview>> {
  Map<String, UserInterview> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<Map<String, UserInterview>, Map<String, UserInterview>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                Map<String, UserInterview>,
                Map<String, UserInterview>
              >,
              Map<String, UserInterview>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
