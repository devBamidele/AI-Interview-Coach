// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interview_analysis_remote_datasource.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(interviewAnalysisRemoteDataSource)
const interviewAnalysisRemoteDataSourceProvider =
    InterviewAnalysisRemoteDataSourceProvider._();

final class InterviewAnalysisRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          InterviewAnalysisRemoteDataSource,
          InterviewAnalysisRemoteDataSource,
          InterviewAnalysisRemoteDataSource
        >
    with $Provider<InterviewAnalysisRemoteDataSource> {
  const InterviewAnalysisRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'interviewAnalysisRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$interviewAnalysisRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<InterviewAnalysisRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  InterviewAnalysisRemoteDataSource create(Ref ref) {
    return interviewAnalysisRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(InterviewAnalysisRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<InterviewAnalysisRemoteDataSource>(
        value,
      ),
    );
  }
}

String _$interviewAnalysisRemoteDataSourceHash() =>
    r'b5033744799040300824e2975df14128a5adddc8';
