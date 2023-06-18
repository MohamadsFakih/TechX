part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    @Default('') String error,
    @Default(false) bool isLoading,
    @Default(false) bool isSignedIn,
  }) = _Initial;
  factory UserState.initial() => const UserState();
}
