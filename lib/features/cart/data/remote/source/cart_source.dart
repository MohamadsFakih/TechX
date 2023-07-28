import 'package:techx/features/categories/data/model/item_model.dart';

abstract class CartSource {
  Future<List<MiniItemModel>> getCartItems(String id);
}
