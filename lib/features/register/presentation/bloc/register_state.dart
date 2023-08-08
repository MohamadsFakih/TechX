part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    /// Checks if the screen is loading
    @Default(false) bool isLoading,

    /// Used to catch errors
    @Default('') String error,

    /// Checks if the user is signed in
    @Default(false) bool signedIn,
  }) = _Initial;

  factory RegisterState.initial() => const RegisterState();
}
