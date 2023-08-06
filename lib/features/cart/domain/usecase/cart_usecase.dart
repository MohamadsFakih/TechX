import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/features/cart/data/model/cart_model.dart';
import 'package:techx/features/cart/domain/repository/cart_repository.dart';
import 'package:techx/features/common/domain/entity/credit_entity.dart';

@injectable
class CartUseCase {
  CartUseCase(this._cartRepository);

  /// The instance of [CartRepository]
  final CartRepository _cartRepository;

  /// The function used to get the user's cart with [userID]
  /// Return  a list of [CartModel]
  Future<List<CartModel>> getCartItems(String id) =>
      _cartRepository.getCartItems(id);

  /// The function used to remove a cart item with [itemId] from [userId]
  /// Return either and error [String] or nothing
  Future<Either<String, Unit>> removeCartItem(String itemId, String userId) =>
      _cartRepository.removeCartItem(itemId, userId);

  /// The function used to clear the cart of the user [userId]
  /// Return either and error [String] or nothing
  Future<Either<String, Unit>> clearCart(String userId) =>
      _cartRepository.clearCart(userId);

  /// The function used to get the list of credit cards from [SharedPreferences]
  /// Return a list of [CreditEntity]
  Future<List<CreditEntity>> getCreditCard() => _cartRepository.getCreditCard();
}
