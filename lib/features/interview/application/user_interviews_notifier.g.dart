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
          AsyncValue<UserInterviewsResponse?>
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
  Override overrideWithValue(AsyncValue<UserInterviewsResponse?> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<UserInterviewsResponse?>>(
        value,
      ),
    );
  }
}

String _$userInterviewsNotifierHash() =>
    r'1f05489e8caff7ec79eab5179b0d03cc12a5de38';

abstract class _$UserInterviewsNotifier
    extends $Notifier<AsyncValue<UserInterviewsResponse?>> {
  AsyncValue<UserInterviewsResponse?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<UserInterviewsResponse?>,
              AsyncValue<UserInterviewsResponse?>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<UserInterviewsResponse?>,
                AsyncValue<UserInterviewsResponse?>
              >,
              AsyncValue<UserInterviewsResponse?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
