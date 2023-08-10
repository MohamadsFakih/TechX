import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/features/categories/data/model/item_model.dart';
import 'package:techx/features/home/data/model/item_model.dart';

@injectable
class HomeService {
  HomeService(this.fireStore);

  /// The instance of [FirebaseFirestore]
  final FirebaseFirestore fireStore;

  /// The function used to fetch the featured products
  Future<List<MiniItemModel>> getFeatured() async {
    final userCollection = fireStore.collection("featured");

    final querySnapshot = await userCollection.get();

    final itemList =
        querySnapshot.docs.map((e) => MiniItemModel.fromSnapshot(e)).toList();

    return itemList;
  }

  /// The function used to fetch the banners
  Future<List<BannerItem>> getBanners() async {
    final userCollection = fireStore.collection("banners");

    final querySnapshot = await userCollection.get();

    final itemList =
        querySnapshot.docs.map((e) => BannerItem.fromSnapshot(e)).toList();

    return itemList;
  }

  /// The function used to fetch the new products
  Future<List<MiniItemModel>> getNew() async {
    final userCollection = fireStore.collection("new");

    final querySnapshot = await userCollection.get();

    final itemList =
        querySnapshot.docs.map((e) => MiniItemModel.fromSnapshot(e)).toList();

    return itemList;
  }
}
