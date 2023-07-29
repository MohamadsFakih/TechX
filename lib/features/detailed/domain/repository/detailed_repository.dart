import 'package:techx/features/categories/domain/entity/item_entity.dart';

abstract class DetailedRepository {
  Future<void> addToCart(
      MiniItemEntity item, String id, int quantity, String model, String color);
}
