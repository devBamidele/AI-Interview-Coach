// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interview_detail_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(InterviewDetailNotifier)
const interviewDetailProvider = InterviewDetailNotifierFamily._();

final class InterviewDetailNotifierProvider
    extends
        $AsyncNotifierProvider<InterviewDetailNotifier, InterviewAnalysis?> {
  const InterviewDetailNotifierProvider._({
    required InterviewDetailNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'interviewDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$interviewDetailNotifierHash();

  @override
  String toString() {
    return r'interviewDetailProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  InterviewDetailNotifier create() => InterviewDetailNotifier();

  @override
  bool operator ==(Object other) {
    return other is InterviewDetailNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$interviewDetailNotifierHash() =>
    r'a9002ee5301e15fb83e42fdcbdf4fe265ad5655e';

final class InterviewDetailNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          InterviewDetailNotifier,
          AsyncValue<InterviewAnalysis?>,
          InterviewAnalysis?,
          FutureOr<InterviewAnalysis?>,
          String
        > {
  const InterviewDetailNotifierFamily._()
    : super(
        retry: null,
        name: r'interviewDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  InterviewDetailNotifierProvider call(String interviewId) =>
      InterviewDetailNotifierProvider._(argument: interviewId, from: this);

  @override
  String toString() => r'interviewDetailProvider';
}

abstract class _$InterviewDetailNotifier
    extends $AsyncNotifier<InterviewAnalysis?> {
  late final _$args = ref.$arg as String;
  String get interviewId => _$args;

  FutureOr<InterviewAnalysis?> build(String interviewId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref as $Ref<AsyncValue<InterviewAnalysis?>, InterviewAnalysis?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<InterviewAnalysis?>, InterviewAnalysis?>,
              AsyncValue<InterviewAnalysis?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
