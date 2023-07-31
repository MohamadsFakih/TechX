import 'package:dartz/dartz.dart';
import 'package:techx/features/cart/data/model/cart_model.dart';
import 'package:techx/features/common/domain/entity/credit_entity.dart';

abstract class CartRepository {
  Future<List<CartModel>> getCartItems(String id);
  Future<Either<String, Unit>> removeCartItem(String itemId, String userId);
  Future<Either<String, Unit>> clearCart(String userId);
  Future<List<CreditEntity>> getCreditCard();
}
