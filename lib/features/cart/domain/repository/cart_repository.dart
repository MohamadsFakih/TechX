import 'package:dartz/dartz.dart';
import 'package:techx/features/cart/data/model/cart_model.dart';
import 'package:techx/features/common/domain/entity/credit_entity.dart';

abstract class CartRepository {
  /// The function used to get the user's cart with [userID]
  /// Return  a list of [CartModel]
  Future<List<CartModel>> getCartItems(String id);

  /// The function used to remove a cart item with [itemId] from [userId]
  /// Return either and error [String] or nothing
  Future<Either<String, Unit>> removeCartItem(String itemId, String userId);

  /// The function used to clear the cart of the user [userId]
  /// Return either and error [String] or nothing
  Future<Either<String, Unit>> clearCart(String userId);

  /// The function used to get the list of credit cards from [SharedPreferences]
  /// Return a list of [CreditEntity]
  Future<List<CreditEntity>> getCreditCard();
}
