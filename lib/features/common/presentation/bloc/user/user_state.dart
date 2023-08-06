part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    /// Used to catch the errors
    @Default('') String error,

    /// The current user id
    @Default('') String id,

    /// To show the loading bar
    @Default(false) bool isLoading,

    /// Checks if the user is signed in
    @Default(false) bool isSignedIn,
  }) = _Initial;
  factory UserState.initial() => const UserState();
}
