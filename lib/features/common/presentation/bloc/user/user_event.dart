part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.checkSignedIn() = IsSignedIn;
}
