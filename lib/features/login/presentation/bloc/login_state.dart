part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(false) bool isLoading,
    @Default('') String error,
  }) = _Initial;

  factory LoginState.initial() => const LoginState();
}
