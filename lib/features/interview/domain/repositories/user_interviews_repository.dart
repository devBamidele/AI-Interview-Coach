import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/user_interview.dart';

/// Repository interface for user interviews operations
abstract class UserInterviewsRepository {
  /// Get all interviews for a user with pagination support
  Future<Either<Failure, UserInterviewsResponse>> getUserInterviews({
    int page = 1,
    int limit = 20,
  });
}
