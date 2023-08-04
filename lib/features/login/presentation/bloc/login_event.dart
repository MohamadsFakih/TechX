part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.signIn(LoginCredentials loginCredentials) = SignIn;
  const factory LoginEvent.rememberMe(
      String email, String password, bool toggleValue) = RememberMe;
  const factory LoginEvent.getLoginCredentials() = GetLoginCredentials;
  const factory LoginEvent.sendPasswordReset(String email) = SendPasswordReset;
}
