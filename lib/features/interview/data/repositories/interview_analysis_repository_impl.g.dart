// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interview_analysis_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(interviewAnalysisRepository)
const interviewAnalysisRepositoryProvider =
    InterviewAnalysisRepositoryProvider._();

final class InterviewAnalysisRepositoryProvider
    extends
        $FunctionalProvider<
          InterviewAnalysisRepository,
          InterviewAnalysisRepository,
          InterviewAnalysisRepository
        >
    with $Provider<InterviewAnalysisRepository> {
  const InterviewAnalysisRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'interviewAnalysisRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$interviewAnalysisRepositoryHash();

  @$internal
  @override
  $ProviderElement<InterviewAnalysisRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  InterviewAnalysisRepository create(Ref ref) {
    return interviewAnalysisRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(InterviewAnalysisRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<InterviewAnalysisRepository>(value),
    );
  }
}

String _$interviewAnalysisRepositoryHash() =>
    r'1867a9b9b49dfd06cd47fb4b863f09fae462982c';
