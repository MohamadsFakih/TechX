import 'package:techx/features/categories/domain/entity/item_entity.dart';

abstract class CartSource{
  Future<List<MiniItemEntity>> getCartItems();

}