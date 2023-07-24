import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';

@injectable
class CartService{
  Future<List<MiniItemEntity>> getCartItems() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final cartItemsJson = prefs.getStringList('cartItems');
    if (cartItemsJson == null) {
      return [];
    }

    List<MiniItemEntity> cartItems = cartItemsJson
        .map((itemJson) => MiniItemEntity.fromJson(json.decode(itemJson)))
        .toList();

    return cartItems;
  }
}