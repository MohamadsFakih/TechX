import 'package:techx/core/data/model/enums.dart';
import 'package:techx/features/items/domain/entity/item_entity.dart';

abstract class MiniItemRepository {
  Future<List<MiniItemEntity>> getApplePhones(
      MiniSubCategoryType miniSubCategoryType);
}
