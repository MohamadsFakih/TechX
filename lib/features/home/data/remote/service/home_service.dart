import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/features/home/data/model/item_model.dart';

@injectable
class HomeService {
  HomeService(this.fireStore);

  final FirebaseFirestore fireStore;

  Stream<List<ItemModel>> getFeatured() {
    final userCollection = fireStore.collection("featured");

    return userCollection.snapshots().map((querySnapshot) {
      return querySnapshot.docs.map((e) => ItemModel.fromSnapshot(e)).toList();
    });
  }
}
