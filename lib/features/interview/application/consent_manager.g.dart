// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consent_manager.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ConsentManager)
const consentManagerProvider = ConsentManagerProvider._();

final class ConsentManagerProvider
    extends $NotifierProvider<ConsentManager, bool> {
  const ConsentManagerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'consentManagerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$consentManagerHash();

  @$internal
  @override
  ConsentManager create() => ConsentManager();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$consentManagerHash() => r'27ac34bd71480ae48cda0a8830abfc51d94b82ac';

abstract class _$ConsentManager extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
