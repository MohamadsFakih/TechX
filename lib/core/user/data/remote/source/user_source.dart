import 'package:techx/core/user/data/model/user_model.dart';

abstract class UserSource {
  Future<void> googleAuth();
  Future<void> createUser(UserModel userModel);
  Future<void> forgotPassword(String email);
  Future<bool> isSignedIn();
  Future<void> signIn(UserModel userModel);
  Future<void> signUp(UserModel userModel);
  Future<void> signOut();
  Future<void> updateUser(UserModel userModel);
  Future<String> getCurrentUid();
  Stream<List<UserModel>> getAllUsers(UserModel userModel);
  Stream<List<UserModel>> getSingleUser(UserModel userModel);
}
