import 'package:injectable/injectable.dart';
import 'package:techx/features/settings/data/local/service/credit_service.dart';
import 'package:techx/features/settings/data/local/source/credit_source.dart';
import 'package:techx/features/common/data/model/credit_model.dart';

@Injectable(as: CreditSource)
class CreditSourceImpl implements CreditSource {
  CreditSourceImpl(this._creditService);

  /// The instance of [CreditService]
  final CreditService _creditService;

  /// The function that adds a credit card to the shared preferences
  @override
  Future<void> addCreditCard(CreditCardModel creditCard) =>
      _creditService.addCreditCard(creditCard);

  /// The function that gets the stored credit cards in the shared preferences
  @override
  Future<List<CreditCardModel>> getCreditCard() =>
      _creditService.getCreditCard();

  /// The function that deletes a credit card
  @override
  Future<void> deleteCreditCard(String cardNumber) =>
      _creditService.deleteCreditCard(cardNumber);
}
