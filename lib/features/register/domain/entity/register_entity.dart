import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_entity.freezed.dart';

@freezed
class RegisterEntity with _$RegisterEntity {
  const factory RegisterEntity({
    @Default('') String name,
    @Default('') String email,
    @Default('') String password,
    @Default('') String retryPassword,
  }) = _RegisterEntity;
}
