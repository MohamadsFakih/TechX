part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.checkSignedIn() = IsSignedIn;
  const factory UserEvent.addLike(String id, String type) = AddLike;
  const factory UserEvent.getUid() = GetUid;
}
