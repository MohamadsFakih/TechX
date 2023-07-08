part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.checkSignedIn() = IsSignedIn;
  const factory UserEvent.addLike(MiniItemEntity item, String type) = AddLike;
  const factory UserEvent.getUid() = GetUid;
}
