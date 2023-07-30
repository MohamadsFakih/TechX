import 'package:injectable/injectable.dart';
import 'package:techx/features/settings/data/local/service/credit_service.dart';
import 'package:techx/features/settings/data/local/source/credit_source.dart';
import 'package:techx/features/settings/data/model/credit_model.dart';

@Injectable(as: CreditSource)
class CreditSourceImpl implements CreditSource {
  CreditSourceImpl(this._creditService);

  final CreditService _creditService;

  @override
  Future<void> addCreditCard(CreditCardModel creditCard) =>
      _creditService.addCreditCard(creditCard);

  @override
  Future<List<CreditCardModel>> getCreditCard() =>
      _creditService.getCreditCard();
}
