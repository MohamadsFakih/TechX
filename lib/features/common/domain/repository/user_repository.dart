import 'package:dartz/dartz.dart';
import 'package:techx/features/common/domain/entity/user_entity.dart';

abstract class UserRepository {
  Future<bool> isSignedIn();
  Future<String> getCurrentUid();
  Stream<List<UserEntity>> getSingleUser(UserEntity userEntity);
  Future<Either<String, Unit>> addLike(String id, String collection);
}
