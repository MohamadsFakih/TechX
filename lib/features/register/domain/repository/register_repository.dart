import 'package:dartz/dartz.dart';
import 'package:techx/features/register/domain/entity/register_entity.dart';

abstract class RegisterRepository {
  Future<Either<String, Unit>> signUp(RegisterEntity registerEntity);
}
