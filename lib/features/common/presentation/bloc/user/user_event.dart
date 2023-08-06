part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  /// The event to check if a user is signed in
  const factory UserEvent.checkSignedIn() = IsSignedIn;

  /// The event to add and item to favorites
  const factory UserEvent.addLike(MiniItemEntity item, String type) = AddLike;

  /// The event to get the current user id
  const factory UserEvent.getUid() = GetUid;

  /// The event to sign the user out
  const factory UserEvent.signOut() = SignOut;
}
