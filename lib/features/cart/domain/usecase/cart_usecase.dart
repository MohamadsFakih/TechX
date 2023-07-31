import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/features/cart/data/model/cart_model.dart';
import 'package:techx/features/cart/domain/repository/cart_repository.dart';
import 'package:techx/features/common/domain/entity/credit_entity.dart';

@injectable
class CartUseCase {
  CartUseCase(this._cartRepository);
  final CartRepository _cartRepository;
  Future<List<CartModel>> getCartItems(String id) =>
      _cartRepository.getCartItems(id);

  Future<Either<String, Unit>> removeCartItem(String itemId, String userId) =>
      _cartRepository.removeCartItem(itemId, userId);

  Future<Either<String, Unit>> clearCart(String userId) =>
      _cartRepository.clearCart(userId);

  Future<List<CreditEntity>> getCreditCard() => _cartRepository.getCreditCard();
}
