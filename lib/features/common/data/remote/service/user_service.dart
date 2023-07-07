import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
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

  Future<void> addLike(
    String id,
    String collection,
  ) async {
    final itemToLike = fireStore.collection(collection).doc(id);

    final myList = [auth.currentUser!.uid];
    await itemToLike.update({
      "likes": FieldValue.arrayUnion(myList),
    });
  }
}
