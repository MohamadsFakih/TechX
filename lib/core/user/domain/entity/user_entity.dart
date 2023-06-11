import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    @Default('') String name,
    @Default('') String email,
    @Default('') String uid,
    @Default('') String password,
  }) = _UserEntity;
}
