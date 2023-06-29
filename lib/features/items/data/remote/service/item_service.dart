import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/core/data/model/enums.dart';
import 'package:techx/features/items/data/model/item_model.dart';

@injectable
class MiniItemService {
  MiniItemService(this.fireStore);

  final FirebaseFirestore fireStore;

  Future<List<MiniItemModel>> getApplePhones(
      MiniSubCategoryType miniSubCategoryType) async {
    var userCollection = fireStore.collection("applePhones");

    switch (miniSubCategoryType) {
      case MiniSubCategoryType.applePhones:
        userCollection = fireStore.collection("applePhones");
        break;
      case MiniSubCategoryType.samsungPhone:
        userCollection = fireStore.collection("samsungPhones");
        break;
      case MiniSubCategoryType.appleTablets:
        userCollection = fireStore.collection("appleTablets");
        break;
      default:
        break;
    }

    final querySnapshot = await userCollection.get();

    final itemList =
        querySnapshot.docs.map((e) => MiniItemModel.fromSnapshot(e)).toList();

    return itemList;
  }
}
