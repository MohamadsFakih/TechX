import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/features/common/domain/entity/credit_entity.dart';
import 'package:techx/features/settings/domain/repository/credit_repository.dart';

@injectable
class CreditUseCase {
  CreditUseCase(this._creditRepository);

  /// The instance of [CreditRepository]
  final CreditRepository _creditRepository;

  /// The function that gets the stored credit cards in the shared preferences
  /// Return a list of [CreditEntity]
  Future<List<CreditEntity>> getCreditCard() =>
      _creditRepository.getCreditCard();

  /// The function that adds a credit card to the shared preferences
  /// Returns either an error [String] or nothing
  Future<Either<String, Unit>> addCreditCard(CreditEntity creditCard) =>
      _creditRepository.addCreditCard(creditCard);

  /// The function that deletes a credit card
  /// Returns either an error [String] or nothing
  Future<Either<String, Unit>> deleteCreditCard(String cardNumber) =>
      _creditRepository.deleteCreditCard(cardNumber);
}
