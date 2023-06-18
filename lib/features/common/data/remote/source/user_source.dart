import 'package:techx/features/common/data/model/user_model.dart';

abstract class UserSource {
  Future<bool> isSignedIn();
  Future<String> getCurrentUid();
  Stream<List<UserModel>> getAllUsers(UserModel userModel);
  Stream<List<UserModel>> getSingleUser(UserModel userModel);
}
