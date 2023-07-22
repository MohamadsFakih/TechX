import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';

@injectable
class DetailedLocalService {
  Future<void> addToCart(MiniItemEntity item) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String itemJson = MiniItemEntity.toJson(item);

    await prefs.setString('cartItem', itemJson);
  }
}
