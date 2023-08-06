import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    /// The user's name
    @Default('') String name,

    /// The user's email
    @Default('') String email,

    /// The user's id
    @Default('') String uid,

    /// The user's password
    @Default('') String password,
  }) = _UserEntity;
}
