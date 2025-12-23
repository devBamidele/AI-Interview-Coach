import 'package:dartz/dartz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../../../core/runner/service_runner.dart';
import '../../domain/entities/user_interview.dart';
import '../../domain/repositories/user_interviews_repository.dart';
import '../datasources/user_interviews_remote_datasource.dart';

part 'user_interviews_repository_impl.g.dart';

@riverpod
UserInterviewsRepository userInterviewsRepository(Ref ref) {
  return UserInterviewsRepositoryImpl(ref);
}

/// Implementation of UserInterviewsRepository
class UserInterviewsRepositoryImpl extends ServiceRunner
    implements UserInterviewsRepository {
  final UserInterviewsRemoteDataSource _remoteDataSource;

  UserInterviewsRepositoryImpl(Ref ref)
      : _remoteDataSource = ref.read(userInterviewsRemoteDataSourceProvider),
        super(ref.read(networkInfoProvider));

  @override
  Future<Either<Failure, UserInterviewsResponse>> getUserInterviews(
    String accessToken,
  ) {
    return run(() async {
      final dto = await _remoteDataSource.getUserInterviews(accessToken);
      return dto.toEntity();
    }, errorTitle: 'Failed to fetch interviews');
  }
}
