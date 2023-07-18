import 'package:techx/core/data/model/enums.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';

abstract class MiniItemRepository {
  Future<List<MiniItemEntity>> getItems(
    MiniSubCategoryType miniSubCategoryType,
  );

  Future<List<MiniItemEntity>> getFavorites(
    String uid,
  );
}
