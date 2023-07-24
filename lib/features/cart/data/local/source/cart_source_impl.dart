import 'package:injectable/injectable.dart';
import 'package:techx/features/cart/data/local/service/cart_service.dart';
import 'package:techx/features/cart/data/local/source/cart_source.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';

@Injectable(as: CartSource)
class CartSourceImpl implements CartSource{
  CartSourceImpl(this._cartService);
  final CartService _cartService;
  @override
  Future<List<MiniItemEntity>> getCartItems() =>_cartService.getCartItems();

}