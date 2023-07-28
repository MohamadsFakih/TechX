import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/features/categories/data/model/item_model.dart';

@injectable
class CartService {
  CartService(this.fireStore);

  final FirebaseFirestore fireStore;
  Future<List<MiniItemModel>> getCartItems(String id) async {
    final cartCollection =
        fireStore.collection("users").doc(id).collection('"cart');

    final querySnapshot = await cartCollection.get();

    final itemList =
        querySnapshot.docs.map((e) => MiniItemModel.fromSnapshot(e)).toList();

    return itemList;
  }
}
