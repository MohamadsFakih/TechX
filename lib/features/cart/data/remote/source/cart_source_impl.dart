import 'package:injectable/injectable.dart';
import 'package:techx/features/cart/data/remote/service/cart_service.dart';
import 'package:techx/features/cart/data/remote/source/cart_source.dart';
import 'package:techx/features/categories/data/model/item_model.dart';

@Injectable(as: CartSource)
class CartSourceImpl implements CartSource {
  CartSourceImpl(this._cartService);
  final CartService _cartService;
  @override
  Future<List<MiniItemModel>> getCartItems(String id) =>
      _cartService.getCartItems(id);
}
