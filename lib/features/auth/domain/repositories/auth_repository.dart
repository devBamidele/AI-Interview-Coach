import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/auth_session.dart';

/// Repository interface for authentication operations
abstract class AuthRepository {
  Future<Either<Failure, AuthSession>> login({
    required String email,
    required String password,
  });

  Future<Either<Failure, AuthSession>> signup({
    required String email,
    required String name,
    required String password,
  });

  Future<Either<Failure, AuthSession>> refreshToken(String refreshToken);

  Future<Either<Failure, void>> logout(String? refreshToken);

  Future<Either<Failure, AuthSession?>> getCurrentSession();
}
