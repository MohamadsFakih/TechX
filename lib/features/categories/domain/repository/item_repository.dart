import 'package:techx/core/data/model/enums.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';

abstract class MiniItemRepository {
  /// The function to get the selected set of items
  Future<List<MiniItemEntity>> getItems(
    MiniSubCategoryType miniSubCategoryType,
  );

  /// The function used to get the items the user added to their favorites
  Future<List<MiniItemEntity>> getFavorites(
    String uid,
  );
}
