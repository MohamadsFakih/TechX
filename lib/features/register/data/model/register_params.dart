import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_params.freezed.dart';

@freezed
class RegisterParams with _$RegisterParams {
  const factory RegisterParams({
    @Default('') String name,
    @Default('') String email,
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
