import 'package:injectable/injectable.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';

import 'package:techx/features/common/data/model/user_model.dart';
import 'package:techx/features/common/data/remote/service/user_service.dart';
import 'package:techx/features/common/data/remote/source/user_source.dart';

@Injectable(as: UserSource)
class UserSourceImpl implements UserSource {
  UserSourceImpl(this._userService);

  final UserService _userService;

  @override
  Future<String> getCurrentUid() => _userService.getCurrentUid();

  @override
  Stream<List<UserModel>> getSingleUser(UserModel userModel) =>
      _userService.getSingleUser(userModel);

  @override
  Future<bool> isSignedIn() => _userService.isSignedIn();

  @override
  Future<void> addLike(MiniItemEntity item, String collection) =>
      _userService.addLike(item, collection);
  @override
  Future<void> signOut() => _userService.signOut();
}
