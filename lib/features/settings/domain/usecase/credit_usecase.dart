import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/features/settings/domain/entity/credit_entity.dart';
import 'package:techx/features/settings/domain/repository/credit_repository.dart';

@injectable
class CreditUseCase {
  CreditUseCase(this._creditRepository);
  final CreditRepository _creditRepository;

  Future<List<CreditEntity>> getCreditCard() =>
      _creditRepository.getCreditCard();

  Future<Either<String, Unit>> addCreditCard(CreditEntity creditCard) =>
      _creditRepository.addCreditCard(creditCard);

  Future<Either<String, Unit>> deleteCreditCard(String cardNumber) =>
      _creditRepository.deleteCreditCard(cardNumber);
}
