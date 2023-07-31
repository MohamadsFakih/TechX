import 'package:techx/features/common/data/model/credit_model.dart';

abstract class CreditSource {
  Future<List<CreditCardModel>> getCreditCard();
  Future<void> addCreditCard(CreditCardModel creditCard);
  Future<void> deleteCreditCard(String cardNumber);
}
