import 'package:techx/features/categories/domain/entity/item_entity.dart';

abstract class UserSource {
  /// Checks if the user is signed in
  Future<bool> isSignedIn();

  /// Returns the user Id
  Future<String> getCurrentUid();

  /// Adds an item to favorites
  Future<void> addLike(MiniItemEntity itemEntity, String collection);

  /// Logs the user out
  Future<void> signOut();
}
