part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.toContact() = NavigateToContact;
  const factory SettingsEvent.toFaq() = NavigateToFaq;
  const factory SettingsEvent.toMain() = NavigateToMain;
}
