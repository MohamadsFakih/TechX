part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default(false) bool isLoading,
    @Default('') String error,
  }) = _Initial;

  factory RegisterState.initial() => const RegisterState();
}
