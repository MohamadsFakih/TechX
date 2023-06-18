import 'package:techx/features/common/domain/entity/user_entity.dart';

abstract class UserRepository {
  Future<bool> isSignedIn();
  Future<String> getCurrentUid();
  Stream<List<UserEntity>> getAllUsers(UserEntity userEntity);
  Stream<List<UserEntity>> getSingleUser(UserEntity userEntity);
}
