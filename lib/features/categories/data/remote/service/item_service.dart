import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/core/data/model/enums.dart';
import 'package:techx/features/categories/data/model/item_model.dart';

@injectable
class MiniItemService {
  MiniItemService(this.fireStore);

  final FirebaseFirestore fireStore;

  Future<List<MiniItemModel>> getItems(
      MiniSubCategoryType miniSubCategoryType) async {
    var itemCollection = fireStore.collection("applePhones");

    switch (miniSubCategoryType) {
      case MiniSubCategoryType.applePhones:
        itemCollection = fireStore.collection("applePhones");
        break;
      case MiniSubCategoryType.samsungPhone:
        itemCollection = fireStore.collection("samsungPhones");
        break;
      case MiniSubCategoryType.appleTablets:
        itemCollection = fireStore.collection("appleTablets");
        break;
      case MiniSubCategoryType.macbook:
        itemCollection = fireStore.collection("macbook");
        break;
      case MiniSubCategoryType.laptopAccessories:
        itemCollection = fireStore.collection("laptopAccessories");
        break;
      default:
        break;
    }

    final querySnapshot = await itemCollection.get();

    final itemList =
        querySnapshot.docs.map((e) => MiniItemModel.fromSnapshot(e)).toList();

    return itemList;
  }

  Future<List<MiniItemModel>> getFavorites(String uid) async {
    var userCollection =
        fireStore.collection("users").doc(uid).collection("favorites");

    final querySnapshot = await userCollection.get();

    final itemList =
        querySnapshot.docs.map((e) => MiniItemModel.fromSnapshot(e)).toList();

    return itemList;
  }
}
