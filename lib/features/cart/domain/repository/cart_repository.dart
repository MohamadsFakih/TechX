import 'package:dartz/dartz.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';

abstract class CartRepository {
  Future<List<MiniItemEntity>> getCartItems(String id);
  Future<Either<String, Unit>> removeCartItem(String itemId, String userId);
  Future<Either<String, Unit>> clearCart(String userId);
}
