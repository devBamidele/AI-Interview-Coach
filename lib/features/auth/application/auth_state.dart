import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/entities/user.dart';

part 'auth_state.freezed.dart';

/// Authentication state using Freezed unions
@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;
  const factory AuthState.loading() = Loading;
  const factory AuthState.authenticated(User user) = Authenticated;
  const factory AuthState.unauthenticated() = Unauthenticated;
  const factory AuthState.error(String message) = Error;
}

/// Extension methods for convenient state checking
extension AuthStateX on AuthState {
  bool get isAuthenticated => this is Authenticated;
  bool get isLoading => this is Loading;
  bool get isUnauthenticated => this is Unauthenticated;
  bool get isError => this is Error;

  User? get user => maybeWhen(
        authenticated: (user) => user,
        orElse: () => null,
      );
}
