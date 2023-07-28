import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/features/categories/data/model/item_model.dart';

@injectable
class DetailedLocalService {
  DetailedLocalService(this.fireStore);
  final FirebaseFirestore fireStore;

  Future<void> addToCart(MiniItemModel item, String id, int quantity,
      String model, String color) async {
    var userCollection =
        fireStore.collection("users").doc(id).collection("cart").doc(item.id);
    userCollection.set({
      "name": item.name,
      "description": item.description,
      "image": item.image,
      "id": item.id,
      "model": model,
      "price": item.price,
      "specifications": item.specifications,
      "color": color,
      "quantity": quantity
    });
  }
}
