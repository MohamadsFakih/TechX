import 'package:injectable/injectable.dart';
import 'package:techx/features/cart/data/local/source/cart_source.dart';
import 'package:techx/features/cart/domain/repository/cart_repository.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';

@Injectable(as: CartRepository)
class CartRepositoryImpl implements CartRepository{
  CartRepositoryImpl(this._cartSource);
  final CartSource _cartSource;
  @override
  Future<List<MiniItemEntity>> getCartItems() =>_cartSource.getCartItems();

}