import 'package:injectable/injectable.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';

import 'package:techx/features/common/data/remote/service/user_service.dart';
import 'package:techx/features/common/data/remote/source/user_source.dart';

@Injectable(as: UserSource)
class UserSourceImpl implements UserSource {
  UserSourceImpl(this._userService);

  /// The instance of [UserService]
  final UserService _userService;

  /// Returns the user Id
  @override
  Future<String> getCurrentUid() => _userService.getCurrentUid();

  /// Checks if the user is signed in
  @override
  Future<bool> isSignedIn() => _userService.isSignedIn();

  /// Adds an item to favorites
  @override
  Future<void> addLike(MiniItemEntity item, String collection) =>
      _userService.addLike(item, collection);

  /// Logs the user out
  @override
  Future<void> signOut() => _userService.signOut();
}
