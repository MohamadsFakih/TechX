import 'package:techx/features/categories/domain/entity/item_entity.dart';

abstract class DetailedRepository {
  /// The function to add an item to the cart
  /// it takes the [item] user [id] and [quantity]
  Future<void> addToCart(
      MiniItemEntity item, String id, int quantity, String model, String color);
}
