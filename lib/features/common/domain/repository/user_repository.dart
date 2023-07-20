import 'package:dartz/dartz.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';
import 'package:techx/features/common/domain/entity/user_entity.dart';

abstract class UserRepository {
  Future<bool> isSignedIn();
  Future<String> getCurrentUid();
  Future<void> signOut();
  Stream<List<UserEntity>> getSingleUser(UserEntity userEntity);
  Future<Either<String, Unit>> addLike(MiniItemEntity item, String collection);
}
