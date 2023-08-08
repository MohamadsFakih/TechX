import 'package:techx/features/common/data/model/credit_model.dart';

abstract class CreditSource {
  /// The function that gets the stored credit cards in the shared preferences
  Future<List<CreditCardModel>> getCreditCard();

  /// The function that adds a credit card to the shared preferences
  Future<void> addCreditCard(CreditCardModel creditCard);

  /// The function that deletes a credit card
  Future<void> deleteCreditCard(String cardNumber);
}
