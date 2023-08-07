part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  /// The event called to sign a user in
  const factory LoginEvent.signIn(LoginCredentials loginCredentials) = SignIn;

  /// The event called to save the user's credentials
  const factory LoginEvent.rememberMe(
      String email, String password, bool toggleValue) = RememberMe;

  /// The event called to get the user's saved credentials
  const factory LoginEvent.getLoginCredentials() = GetLoginCredentials;

  /// The event to send a password reset email
  const factory LoginEvent.sendPasswordReset(String email) = SendPasswordReset;
}
