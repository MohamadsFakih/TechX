part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default([]) List<CreditEntity> creditCards,
    @Default(false) bool isLoading,
    @Default("") String error,
  }) = _Initial;

  factory SettingsState.initial() => const SettingsState();
}
