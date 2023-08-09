import 'package:dartz/dartz.dart';
import 'package:techx/features/register/domain/entity/register_entity.dart';

abstract class RegisterRepository {
  /// The function to sign a user up
  /// Returns either an error or the user Id both of type [String]
  Future<Either<String, String>> signUp(RegisterEntity registerEntity);
}
