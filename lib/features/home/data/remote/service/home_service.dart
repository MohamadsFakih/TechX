import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/features/home/data/model/item_model.dart';

@injectable
class HomeService {
  HomeService(this.fireStore);

  final FirebaseFirestore fireStore;

  Future<List<ItemModel>> getFeatured() async {
    final userCollection = fireStore.collection("featured");

    final querySnapshot = await userCollection.get();

    final itemList =
        querySnapshot.docs.map((e) => ItemModel.fromSnapshot(e)).toList();

    return itemList;
  }

  Future<List<BannerItem>> getBanners() async {
    final userCollection = fireStore.collection("banners");

    final querySnapshot = await userCollection.get();

    final itemList =
        querySnapshot.docs.map((e) => BannerItem.fromSnapshot(e)).toList();

    return itemList;
  }
}
