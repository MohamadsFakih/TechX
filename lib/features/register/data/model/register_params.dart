import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_params.freezed.dart';

@freezed
class RegisterParams with _$RegisterParams {
  const factory RegisterParams({
    /// The name of the user
    @Default('') String name,

    /// The email of the user
    @Default('') String email,

    /// The password of the user
    @Default('') String password,
  }) = _RegisterParams;
}

@freezed
class RegisterSavedParams with _$RegisterSavedParams {
  const factory RegisterSavedParams({
    @Default('name') String uid,
    @Default('name') String name,
    @Default('name') String email,
  }) = _RegisterSavedParams;
}
