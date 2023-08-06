import 'package:techx/core/data/model/enums.dart';
import 'package:techx/features/categories/data/model/item_model.dart';

abstract class MiniItemSource {
  /// The function to get the selected set of items
  Future<List<MiniItemModel>> getItems(MiniSubCategoryType miniSubCategoryType);

  /// The function used to get the items the user added to their favorites
  Future<List<MiniItemModel>> getFavorites(String uid);
}
