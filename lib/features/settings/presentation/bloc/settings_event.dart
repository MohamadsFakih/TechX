part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.getCreditCards() = GetCreditCards;
  const factory SettingsEvent.addCreditCard(CreditEntity creditEntity) =
      AddCreditCard;
  const factory SettingsEvent.deleteCreditCard(String cardNumber) =
      DeleteCreditCard;
}
