import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/features/cart/data/model/cart_model.dart';
import 'package:techx/features/cart/data/remote/source/cart_source.dart';
import 'package:techx/features/cart/domain/repository/cart_repository.dart';
import 'package:techx/features/common/domain/entity/credit_entity.dart';

@Injectable(as: CartRepository)
class CartRepositoryImpl implements CartRepository {
  CartRepositoryImpl(this._cartSource);

  /// The instance of [CartSource]
  final CartSource _cartSource;

  /// The function used to get the user's cart with [userID]
  @override
  Future<List<CartModel>> getCartItems(String id) => _cartSource.getCartItems(
        id,
      );

  /// The function used to clear the cart of the user [userId]
  @override
  Future<Either<String, Unit>> clearCart(String userId) async {
    try {
      await _cartSource.clearCart(userId);
      return right(unit);
    } catch (e) {
      return left(e.toString());
    }
  }

  /// The function used to remove a cart item with [itemId] from [userId]
  @override
  Future<Either<String, Unit>> removeCartItem(
      String itemId, String userId) async {
    try {
      await _cartSource.removeCartItem(itemId, userId);
      return right(unit);
    } catch (e) {
      return left(e.toString());
    }
  }

  /// The function used to get the list of credit cards from [SharedPreferences]
  @override
  Future<List<CreditEntity>> getCreditCard() async {
    final result = await _cartSource.getCreditCard();
    return result.map((e) => CreditEntity.fromModel(e)).toList();
  }
}
