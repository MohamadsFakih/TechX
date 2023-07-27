import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/features/categories/data/model/item_model.dart';

@injectable
class DetailedLocalService {
  DetailedLocalService(this.fireStore);
  final FirebaseFirestore fireStore;

  Future<void> addToCart(MiniItemModel item, String id) async {
    var userCollection =
        fireStore.collection("users").doc(id).collection("cart");
    userCollection.add({
      "name": item.name,
      "description": item.description,
      "image": item.image,
      "id": item.id,
      "imageLinks": item.imageLinks,
      "likes": item.likes,
      "models": item.models,
      "price": item.price,
      "specifications": item.specifications,
      "colors": item.colors,
    });
  }
}
