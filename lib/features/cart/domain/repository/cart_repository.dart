import 'package:techx/features/categories/domain/entity/item_entity.dart';

abstract class CartRepository {
  Future<List<MiniItemEntity>> getCartItems(String id);
}
