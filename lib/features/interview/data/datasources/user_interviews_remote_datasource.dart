import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/api/endpoints.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_request.dart';
import '../../../../core/network/network_retry.dart';
import '../models/user_interview_dto.dart';

part 'user_interviews_remote_datasource.g.dart';

@riverpod
UserInterviewsRemoteDataSource userInterviewsRemoteDataSource(Ref ref) {
  return UserInterviewsRemoteDataSourceImpl(
    networkRequest: ref.watch(networkRequestProvider),
    networkRetry: ref.watch(networkRetryProvider),
  );
}

abstract class UserInterviewsRemoteDataSource {
  Future<UserInterviewsResponseDto> getUserInterviews(String participantIdentity);
}

class UserInterviewsRemoteDataSourceImpl
    implements UserInterviewsRemoteDataSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  UserInterviewsRemoteDataSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  @override
  Future<UserInterviewsResponseDto> getUserInterviews(
    String participantIdentity,
  ) async {
    final url = Endpoints.getUserInterviews(participantIdentity);

    final response = await networkRetry.networkRetry(
      () => networkRequest.get(url),
    );

    if (!response.isSuccess) {
      throw ServerException(
        'Failed to get user interviews with status ${response.statusCode}',
      );
    }

    return UserInterviewsResponseDto.fromJson(response.data);
  }
}
