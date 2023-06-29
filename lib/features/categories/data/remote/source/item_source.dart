import 'package:techx/core/data/model/enums.dart';
import 'package:techx/features/categories/data/model/item_model.dart';

abstract class MiniItemSource {
  Future<List<MiniItemModel>> getApplePhones(
      MiniSubCategoryType miniSubCategoryType);
}
