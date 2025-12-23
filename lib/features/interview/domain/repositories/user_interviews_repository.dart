import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/user_interview.dart';

/// Repository interface for user interviews operations
abstract class UserInterviewsRepository {
  /// Get all interviews for a user using access token
  Future<Either<Failure, UserInterviewsResponse>> getUserInterviews(
    String accessToken,
  );
}
