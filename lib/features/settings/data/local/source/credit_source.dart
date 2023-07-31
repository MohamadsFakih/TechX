import 'package:techx/features/settings/data/model/credit_model.dart';

abstract class CreditSource {
  Future<List<CreditCardModel>> getCreditCard();
  Future<void> addCreditCard(CreditCardModel creditCard);
  Future<void> deleteCreditCard(String cardNumber);
}
