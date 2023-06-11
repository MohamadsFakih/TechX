import 'package:techx/core/user/domain/entity/user_entity.dart';

abstract class UserRepository {
  Future<void> googleAuth();
  Future<void> createUser(UserEntity userEntity);
  Future<void> forgotPassword(String email);
  Future<bool> isSignedIn();
  Future<void> signIn(UserEntity userEntity);
  Future<void> signUp(UserEntity userEntity);
  Future<void> signOut();
  Future<void> updateUser(UserEntity userEntity);
  Future<String> getCurrentUid();
  Stream<List<UserEntity>> getAllUsers(UserEntity userEntity);
  Stream<List<UserEntity>> getSingleUser(UserEntity userEntity);
}
