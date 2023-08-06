import 'package:techx/features/categories/data/model/item_model.dart';

abstract class DetailedLocalSource {
  /// The function to add an item to the cart
  /// it takes the [item] user [id] and [quantity]
  Future<void> addToCart(
    MiniItemModel item,
    String id,
    int quantity,
    String model,
    String color,
  );
}
