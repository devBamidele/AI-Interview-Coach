import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_dto.freezed.dart';
part 'signup_dto.g.dart';

/// Data transfer object for signup request
@freezed
sealed class SignupDto with _$SignupDto {
  const factory SignupDto({
    required String email,
    required String name,
    required String password,
  }) = _SignupDto;

  factory SignupDto.fromJson(Map<String, dynamic> json) =>
      _$SignupDtoFromJson(json);
}
