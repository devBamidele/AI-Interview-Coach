// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_interviews_remote_datasource.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(userInterviewsRemoteDataSource)
const userInterviewsRemoteDataSourceProvider =
    UserInterviewsRemoteDataSourceProvider._();

final class UserInterviewsRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          UserInterviewsRemoteDataSource,
          UserInterviewsRemoteDataSource,
          UserInterviewsRemoteDataSource
        >
    with $Provider<UserInterviewsRemoteDataSource> {
  const UserInterviewsRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userInterviewsRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userInterviewsRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<UserInterviewsRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UserInterviewsRemoteDataSource create(Ref ref) {
    return userInterviewsRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UserInterviewsRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UserInterviewsRemoteDataSource>(
        value,
      ),
    );
  }
}

String _$userInterviewsRemoteDataSourceHash() =>
    r'70da559e611a3544a2142abf8e40d117473f00c6';
