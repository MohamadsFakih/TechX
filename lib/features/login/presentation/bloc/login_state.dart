part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(LoginCredentials()) LoginCredentials loginCredentials,
    @Default("") userId,
    @Default(false) bool isLoading,
    @Default('') String error,
    @Default(false) bool signedIn,
  }) = _Initial;

  factory LoginState.initial() => const LoginState();
}
