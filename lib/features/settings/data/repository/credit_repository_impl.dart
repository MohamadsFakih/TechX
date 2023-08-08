import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/features/settings/data/local/source/credit_source.dart';
import 'package:techx/features/common/data/model/credit_model.dart';
import 'package:techx/features/common/domain/entity/credit_entity.dart';
import 'package:techx/features/settings/domain/repository/credit_repository.dart';

@Injectable(as: CreditRepository)
class CreditRepositoryImpl implements CreditRepository {
  CreditRepositoryImpl(this._creditSource);
  final CreditSource _creditSource;

  /// The function that adds a credit card to the shared preferences
  /// Returns either an error [String] or nothing
  @override
  Future<Either<String, Unit>> addCreditCard(CreditEntity creditCard) async {
    try {
      await _creditSource.addCreditCard(
        CreditCardModel(
          cardType: creditCard.cardType,
          cardNumber: creditCard.cardNumber,
          cardCvv: creditCard.cardCvv,
          cardHolder: creditCard.cardHolder,
          cardDate: creditCard.cardDate,
        ),
      );
      return right(unit);
    } catch (e) {
      return left(
        e.toString(),
      );
    }
  }

  /// The function that gets the stored credit cards in the shared preferences
  /// Return a list of [CreditEntity]
  @override
  Future<List<CreditEntity>> getCreditCard() async {
    final result = await _creditSource.getCreditCard();
    return result.map((e) => CreditEntity.fromModel(e)).toList();
  }

  /// The function that deletes a credit card
  /// Returns either an error [String] or nothing
  @override
  Future<Either<String, Unit>> deleteCreditCard(String cardNumber) async {
    try {
      await _creditSource.deleteCreditCard(cardNumber);
      return right(unit);
    } catch (e) {
      return left(
        e.toString(),
      );
    }
  }
}
