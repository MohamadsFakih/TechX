import 'package:injectable/injectable.dart';
import 'package:techx/features/cart/data/model/cart_model.dart';
import 'package:techx/features/cart/data/remote/service/cart_service.dart';
import 'package:techx/features/cart/data/remote/source/cart_source.dart';
import 'package:techx/features/common/data/model/credit_model.dart';

@Injectable(as: CartSource)
class CartSourceImpl implements CartSource {
  CartSourceImpl(this._cartService);

  /// The instance of [CartService]
  final CartService _cartService;

  /// The function used to get the user's cart with [userID]
  @override
  Future<List<CartModel>> getCartItems(String id) => _cartService.getCartItems(
        id,
      );

  /// The function used to clear the cart of the user [userId]
  @override
  Future<void> clearCart(String userId) => _cartService.clearCart(
        userId,
      );

  /// The function used to remove a cart item with [itemId] from [userId]
  @override
  Future<void> removeCartItem(String itemId, String userId) =>
      _cartService.removeCartItem(
        itemId,
        userId,
      );

  /// The function used to get the list of credit cards from [SharedPreferences]
  @override
  Future<List<CreditCardModel>> getCreditCard() => _cartService.getCreditCard();
}
