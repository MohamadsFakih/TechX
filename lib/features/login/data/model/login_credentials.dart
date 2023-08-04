import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_credentials.freezed.dart';

@freezed
class LoginCredentials with _$LoginCredentials {
  const factory LoginCredentials({
    @Default('') String email,
    @Default('') String password,
    @Default(false) bool isRemembered,
  }) = _LoginCredentials;
}
