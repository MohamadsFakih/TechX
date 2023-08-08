part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  /// The event to sign a user up
  const factory RegisterEvent.signUp(RegisterEntity registerEntity) = Register;
}
