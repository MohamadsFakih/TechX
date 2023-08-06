import 'package:techx/features/cart/data/model/cart_model.dart';
import 'package:techx/features/common/data/model/credit_model.dart';

abstract class CartSource {
  /// The function used to get the user's cart with [userID]
  Future<List<CartModel>> getCartItems(
    String id,
  );

  /// The function used to remove a cart item with [itemId] from [userId]
  Future<void> removeCartItem(
    String itemId,
    String userId,
  );

  /// The function used to clear the cart of the user [userId]
  Future<void> clearCart(
    String userId,
  );

  /// The function used to get the list of credit cards from [SharedPreferences]
  Future<List<CreditCardModel>> getCreditCard();
}
