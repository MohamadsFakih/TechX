import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_entity.freezed.dart';

@freezed
class RegisterEntity with _$RegisterEntity {
  const factory RegisterEntity({
    /// The name field of the user
    @Default('') String name,

    /// The email field of the user
    @Default('') String email,

    /// The password field of the user
    @Default('') String password,

    /// The retyped password field of the user for conformation
    @Default('') String retryPassword,
  }) = _RegisterEntity;
}
