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
    networkRequest: ref.watch(networkRequestProvider),
    networkRetry: ref.watch(networkRetryProvider),
  );
}

abstract class InterviewAnalysisRemoteDataSource {
  Future<InterviewAnalysisDto> getAnalysis(String interviewId);
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
  Future<InterviewAnalysisDto> getAnalysis(String interviewId) async {
    final url = Endpoints.getInterviewAnalysis(interviewId);

    final response = await networkRetry.networkRetry(
      () => networkRequest.get(url),
    );

    if (!response.isSuccess) {
      throw ServerException(
        'Failed to get interview analysis with status ${response.statusCode}',
      );
    }

    return InterviewAnalysisDto.fromJson(response.data);
  }
}
