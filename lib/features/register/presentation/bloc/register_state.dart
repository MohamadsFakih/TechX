part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default(false) bool isLoading,
    @Default('') String error,
    @Default(false) bool signedIn,
  }) = _Initial;

  factory RegisterState.initial() => const RegisterState();
}
