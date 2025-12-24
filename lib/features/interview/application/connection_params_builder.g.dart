// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connection_params_builder.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(connectionParamsBuilder)
const connectionParamsBuilderProvider = ConnectionParamsBuilderProvider._();

final class ConnectionParamsBuilderProvider
    extends
        $FunctionalProvider<
          ConnectionParamsBuilder,
          ConnectionParamsBuilder,
          ConnectionParamsBuilder
        >
    with $Provider<ConnectionParamsBuilder> {
  const ConnectionParamsBuilderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'connectionParamsBuilderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$connectionParamsBuilderHash();

  @$internal
  @override
  $ProviderElement<ConnectionParamsBuilder> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ConnectionParamsBuilder create(Ref ref) {
    return connectionParamsBuilder(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ConnectionParamsBuilder value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ConnectionParamsBuilder>(value),
    );
  }
}

String _$connectionParamsBuilderHash() =>
    r'b26020362464ed44005c0c321b9589766dccb8b2';
