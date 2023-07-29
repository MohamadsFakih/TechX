import 'package:techx/features/categories/data/model/item_model.dart';

abstract class DetailedLocalSource {
  Future<void> addToCart(
      MiniItemModel item, String id, int quantity, String model, String color);
}
