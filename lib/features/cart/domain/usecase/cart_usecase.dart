import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/features/cart/domain/repository/cart_repository.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';

@injectable
class CartUseCase {
  CartUseCase(this._cartRepository);
  final CartRepository _cartRepository;
  Future<List<MiniItemEntity>> getCartItems(String id) =>
      _cartRepository.getCartItems(id);

  Future<Either<String, Unit>> removeCartItem(String itemId, String userId) =>
      _cartRepository.removeCartItem(itemId, userId);

  Future<Either<String, Unit>> clearCart(String userId) =>
      _cartRepository.clearCart(userId);
}
