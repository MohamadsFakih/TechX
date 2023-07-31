import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:techx/features/cart/data/model/cart_model.dart';
import 'package:techx/features/common/data/model/credit_model.dart';

@injectable
class CartService {
  CartService(this.fireStore);

  final FirebaseFirestore fireStore;
  Future<List<CartModel>> getCartItems(String userId) async {
    final cartCollection =
        fireStore.collection("users").doc(userId).collection('cart');

    final querySnapshot = await cartCollection.get();

    final itemList =
        querySnapshot.docs.map((e) => CartModel.fromSnapshot(e)).toList();

    return itemList;
  }

  Future<void> removeCartItem(String itemId, String userId) async {
    final cartCollection =
        fireStore.collection("users").doc(userId).collection('cart');

    await cartCollection.doc(itemId).delete();
  }

  Future<void> clearCart(String userId) async {
    final cartRef = FirebaseFirestore.instance
        .collection('users')
        .doc(userId)
        .collection('cart');

    final cartSnapshot = await cartRef.get();
    final batch = fireStore.batch();
    for (var doc in cartSnapshot.docs) {
      batch.delete(doc.reference);
    }

    await batch.commit();
  }

  Future<List<CreditCardModel>> getCreditCard() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final cardsJson = prefs.getStringList('creditCards');
    if (cardsJson == null) {
      return [];
    }

    List<CreditCardModel> creditCards = cardsJson
        .map((itemJson) => CreditCardModel.fromJson(json.decode(itemJson)))
        .toList();

    return creditCards;
  }
}
