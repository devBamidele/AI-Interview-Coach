// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_manager.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AuthManager)
const authManagerProvider = AuthManagerProvider._();

final class AuthManagerProvider
    extends $NotifierProvider<AuthManager, AuthManagerState> {
  const AuthManagerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authManagerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authManagerHash();

  @$internal
  @override
  AuthManager create() => AuthManager();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthManagerState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthManagerState>(value),
    );
  }
}

String _$authManagerHash() => r'2e46f4cd5113d1793c82db8182ce6def6d4a0a40';

abstract class _$AuthManager extends $Notifier<AuthManagerState> {
  AuthManagerState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AuthManagerState, AuthManagerState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AuthManagerState, AuthManagerState>,
              AuthManagerState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
