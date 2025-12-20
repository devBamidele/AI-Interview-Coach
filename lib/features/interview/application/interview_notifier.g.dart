// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interview_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Notifier for managing interview connection state with code generation

@ProviderFor(InterviewNotifier)
const interviewProvider = InterviewNotifierProvider._();

/// Notifier for managing interview connection state with code generation
final class InterviewNotifierProvider
    extends $NotifierProvider<InterviewNotifier, InterviewState> {
  /// Notifier for managing interview connection state with code generation
  const InterviewNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'interviewProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$interviewNotifierHash();

  @$internal
  @override
  InterviewNotifier create() => InterviewNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(InterviewState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<InterviewState>(value),
    );
  }
}

String _$interviewNotifierHash() => r'b408dd3232950c66f3e0795156d11f9b97b84e0c';

/// Notifier for managing interview connection state with code generation

abstract class _$InterviewNotifier extends $Notifier<InterviewState> {
  InterviewState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<InterviewState, InterviewState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<InterviewState, InterviewState>,
              InterviewState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
