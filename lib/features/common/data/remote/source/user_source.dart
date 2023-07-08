import 'package:techx/features/categories/domain/entity/item_entity.dart';
import 'package:techx/features/common/data/model/user_model.dart';

abstract class UserSource {
  Future<bool> isSignedIn();
  Future<String> getCurrentUid();
  Future<void> addLike(MiniItemEntity itemEntity, String collection);
  Stream<List<UserModel>> getSingleUser(UserModel userModel);
}
