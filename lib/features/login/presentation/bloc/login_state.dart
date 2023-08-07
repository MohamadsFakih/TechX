part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    /// The saved login credentials (locally)
    @Default(LoginCredentials()) LoginCredentials loginCredentials,

    /// The logged in user's id
    @Default("") userId,

    /// To check if the page is loading
    @Default(false) bool isLoading,

    /// To catch errors
    @Default('') String error,

    /// Checks if the user is signed in
    @Default(false) bool signedIn,
  }) = _Initial;

  factory LoginState.initial() => const LoginState();
}
