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
    networkRequest: ref.read(networkRequestProvider),
    networkRetry: ref.read(networkRetryProvider),
  );
}

abstract class UserInterviewsRemoteDataSource {
  Future<UserInterviewsResponseDto> getUserInterviews({
    int page = 1,
    int limit = 20,
  });
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
  Future<UserInterviewsResponseDto> getUserInterviews({
    int page = 1,
    int limit = 20,
  }) async {
    // Use optimized summary endpoint (80-90% smaller payload)
    final url = Endpoints.getUserInterviewsSummary(page: page, limit: limit);

    final response = await networkRetry.networkRetry(
      () => networkRequest.get(url),
    );

    if (!response.isSuccess) {
      // Handle 401 Unauthorized (invalid/expired credentials)
      if (response.statusCode == 401) {
        throw ServerException(
          'Invalid or expired credentials',
        );
      }
      throw ServerException(
        'Failed to get user interviews with status ${response.statusCode}',
      );
    }

    return UserInterviewsResponseDto.fromJson(response.data);
  }
}
