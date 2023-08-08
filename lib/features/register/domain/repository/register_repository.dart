import 'package:dartz/dartz.dart';
import 'package:techx/features/register/domain/entity/register_entity.dart';

abstract class RegisterRepository {
  /// The function to sign a user up
  /// Returns either an error [String] or nothing
  Future<Either<String, Unit>> signUp(RegisterEntity registerEntity);
}
