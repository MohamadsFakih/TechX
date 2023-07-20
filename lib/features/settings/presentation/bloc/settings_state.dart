part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default(false) bool showContact,
    @Default(false) bool showFaq,
    @Default(true) bool showMain,
  }) = _Initial;

  factory SettingsState.initial() => const SettingsState();
}
