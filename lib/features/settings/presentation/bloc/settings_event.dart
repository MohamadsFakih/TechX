part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  /// The event that gets the saved credit cards
  const factory SettingsEvent.getCreditCards() = GetCreditCards;

  /// The event that adds a credit card
  const factory SettingsEvent.addCreditCard(CreditEntity creditEntity) =
      AddCreditCard;

  /// The event to delete a credit card
  const factory SettingsEvent.deleteCreditCard(String cardNumber) =
      DeleteCreditCard;
}
