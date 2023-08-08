part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    /// The list of credit cards
    @Default([]) List<CreditEntity> creditCards,

    /// To check if the screen is loading
    @Default(false) bool isLoading,

    /// To catch errors
    @Default("") String error,
  }) = _Initial;

  factory SettingsState.initial() => const SettingsState();
}
