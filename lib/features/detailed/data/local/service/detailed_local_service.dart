import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';

@injectable
class DetailedLocalService {
  Future<List<MiniItemEntity>> _getCartItems() async {
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

  Future<void> _saveCartItems(List<MiniItemEntity> items) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    final cartItemsJson =
        items.map((item) => json.encode(item.toJson())).toList();

    await prefs.setStringList('cartItems', cartItemsJson);
  }

  Future<void> addToCart(MiniItemEntity item) async {
    try {
      final List<MiniItemEntity> cartItems = await _getCartItems();
      print(cartItems);

      cartItems.add(item);

      await _saveCartItems(cartItems);
    } catch (e) {
      print('Error adding item to cart: $e');
    }
  }
}
