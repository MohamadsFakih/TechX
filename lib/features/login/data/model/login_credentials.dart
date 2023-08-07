import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_credentials.freezed.dart';

@freezed
class LoginCredentials with _$LoginCredentials {
  const factory LoginCredentials({
    /// The user's email address
    @Default('') String email,

    /// The user's password
    @Default('') String password,

    /// Checks if remember me is ticked
    @Default(false) bool isRemembered,
  }) = _LoginCredentials;
}
