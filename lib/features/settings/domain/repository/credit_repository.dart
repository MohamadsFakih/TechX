import 'package:dartz/dartz.dart';
import 'package:techx/features/common/domain/entity/credit_entity.dart';

abstract class CreditRepository {
  /// The function that gets the stored credit cards in the shared preferences
  /// Return a list of [CreditEntity]
  Future<List<CreditEntity>> getCreditCard();

  /// The function that adds a credit card to the shared preferences
  /// Returns either an error [String] or nothing
  Future<Either<String, Unit>> addCreditCard(CreditEntity creditCard);

  /// The function that deletes a credit card
  /// Returns either an error [String] or nothing
  Future<Either<String, Unit>> deleteCreditCard(String cardNumber);
}
