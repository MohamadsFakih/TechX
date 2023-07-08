import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';
import 'package:techx/features/common/data/model/user_model.dart';

@injectable
class UserService {
  UserService(this.auth, this.fireStore);

  final FirebaseAuth auth;
  final FirebaseFirestore fireStore;

  Future<String> getCurrentUid() async => auth.currentUser!.uid;

  Future<bool> isSignedIn() async {
    return auth.currentUser?.uid != null;
  }

  Future<void> signOut() async {
    await auth.signOut();
  }

  Stream<List<UserModel>> getSingleUser(UserModel userModel) {
    final userCollection = fireStore.collection("users");

    return userCollection
        .limit(1)
        .where("uid", isEqualTo: userModel.uid)
        .snapshots()
        .map((querySnapshot) {
      return querySnapshot.docs.map((e) => UserModel.fromSnapshot(e)).toList();
    });
  }

  Future<void> addLike(MiniItemEntity item, String collection) async {
    final itemToLike = fireStore.collection(collection).doc(item.id);
    final myList = [auth.currentUser!.uid];

    final snapshot = await itemToLike.get();
    final likesList = snapshot.data()?['likes'] ?? [];

    if (likesList.contains(auth.currentUser!.uid)) {
      await itemToLike.update({
        "likes": FieldValue.arrayRemove(myList),
      });
      _deleteFavorite(item);
    } else {
      await itemToLike.update({
        "likes": FieldValue.arrayUnion(myList),
      });
      _createFavorite(item);
    }
  }

  Future<void> _createFavorite(MiniItemEntity item) async {
    final favoriteCollection = fireStore
        .collection("users")
        .doc(auth.currentUser!.uid)
        .collection("favorites");

    favoriteCollection.doc(item.id).get().then((favoriteDoc) async {
      if (!favoriteDoc.exists) {
        await favoriteCollection.doc(item.id).set({
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
      } else {
        return;
      }
    });
  }

  Future<void> _deleteFavorite(MiniItemEntity item) async {
    final favoriteCollection = fireStore
        .collection("users")
        .doc(auth.currentUser!.uid)
        .collection("favorites");

    favoriteCollection.doc(item.id).get().then((favoriteDoc) async {
      if (favoriteDoc.exists) {
        await favoriteCollection.doc(item.id).delete();
      } else {
        return;
      }
    });
  }
}
