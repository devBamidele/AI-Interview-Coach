// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_interviews_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UserInterviewsNotifier)
const userInterviewsProvider = UserInterviewsNotifierProvider._();

final class UserInterviewsNotifierProvider
    extends
        $NotifierProvider<
          UserInterviewsNotifier,
          AsyncValue<UserInterviewsState?>
        > {
  const UserInterviewsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userInterviewsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userInterviewsNotifierHash();

  @$internal
  @override
  UserInterviewsNotifier create() => UserInterviewsNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<UserInterviewsState?> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<UserInterviewsState?>>(
        value,
      ),
    );
  }
}

String _$userInterviewsNotifierHash() =>
    r'a47174a150e8aa32a95bdc3e28519e33cbb9c9a9';

abstract class _$UserInterviewsNotifier
    extends $Notifier<AsyncValue<UserInterviewsState?>> {
  AsyncValue<UserInterviewsState?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<UserInterviewsState?>,
              AsyncValue<UserInterviewsState?>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<UserInterviewsState?>,
                AsyncValue<UserInterviewsState?>
              >,
              AsyncValue<UserInterviewsState?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
