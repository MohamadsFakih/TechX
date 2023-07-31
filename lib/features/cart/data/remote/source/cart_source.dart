import 'package:techx/features/cart/data/model/cart_model.dart';
import 'package:techx/features/common/data/model/credit_model.dart';

abstract class CartSource {
  Future<List<CartModel>> getCartItems(String id);
  Future<void> removeCartItem(String itemId, String userId);
  Future<void> clearCart(String userId);
  Future<List<CreditCardModel>> getCreditCard();
}
