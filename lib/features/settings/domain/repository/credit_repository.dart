import 'package:dartz/dartz.dart';
import 'package:techx/features/common/domain/entity/credit_entity.dart';

abstract class CreditRepository {
  Future<List<CreditEntity>> getCreditCard();
  Future<Either<String, Unit>> addCreditCard(CreditEntity creditCard);
  Future<Either<String, Unit>> deleteCreditCard(String cardNumber);
}
