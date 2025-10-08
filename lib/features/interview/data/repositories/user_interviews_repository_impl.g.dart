// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_interviews_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(userInterviewsRepository)
const userInterviewsRepositoryProvider = UserInterviewsRepositoryProvider._();

final class UserInterviewsRepositoryProvider
    extends
        $FunctionalProvider<
          UserInterviewsRepository,
          UserInterviewsRepository,
          UserInterviewsRepository
        >
    with $Provider<UserInterviewsRepository> {
  const UserInterviewsRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userInterviewsRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userInterviewsRepositoryHash();

  @$internal
  @override
  $ProviderElement<UserInterviewsRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UserInterviewsRepository create(Ref ref) {
    return userInterviewsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UserInterviewsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UserInterviewsRepository>(value),
    );
  }
}

String _$userInterviewsRepositoryHash() =>
    r'fda9d6ed750f3da10b723eaaf1ac3d623c8825ab';
