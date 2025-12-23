import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/api/endpoints.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_request.dart';
import '../../../../core/network/network_retry.dart';
import '../models/interview_analysis_dto.dart';

part 'interview_analysis_remote_datasource.g.dart';

@riverpod
InterviewAnalysisRemoteDataSource interviewAnalysisRemoteDataSource(Ref ref) {
  return InterviewAnalysisRemoteDataSourceImpl(
    networkRequest: ref.read(networkRequestProvider),
    networkRetry: ref.read(networkRetryProvider),
  );
}

abstract class InterviewAnalysisRemoteDataSource {
  Future<InterviewAnalysisDto> getAnalysis(String accessToken);
}

class InterviewAnalysisRemoteDataSourceImpl
    implements InterviewAnalysisRemoteDataSource {
  final NetworkRequest networkRequest;
  final NetworkRetry networkRetry;

  InterviewAnalysisRemoteDataSourceImpl({
    required this.networkRequest,
    required this.networkRetry,
  });

  @override
  Future<InterviewAnalysisDto> getAnalysis(String accessToken) async {
    final url = Endpoints.getInterviewAnalysis;

    final response = await networkRetry.networkRetry(
      () => networkRequest.get(
        url,
        headers: {'x-interview-token': accessToken},
      ),
    );

    if (!response.isSuccess) {
      // Handle 401 Unauthorized (invalid/missing token)
      if (response.statusCode == 401) {
        throw ServerException(
          'Invalid or expired interview access token',
        );
      }
      // Handle 404 Not Found (interview deleted)
      if (response.statusCode == 404) {
        throw ServerException(
          'Interview not found',
        );
      }
      throw ServerException(
        'Failed to get interview analysis with status ${response.statusCode}',
      );
    }

    return InterviewAnalysisDto.fromJson(response.data);
  }
}
