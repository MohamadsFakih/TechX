import 'package:techx/features/common/data/model/user_model.dart';

abstract class UserSource {
  Future<bool> isSignedIn();
  Future<String> getCurrentUid();
  Future<void> addLike(String id, String collection);
  Stream<List<UserModel>> getSingleUser(UserModel userModel);
}
