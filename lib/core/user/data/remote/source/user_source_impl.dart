import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/core/user/data/model/user_model.dart';
import 'package:techx/core/user/data/remote/source/user_source.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

@Injectable(as: UserSource)
class UserSourceImpl implements UserSource {
  UserSourceImpl(this.fireStore, this.auth, this.googleSignIn);

  final FirebaseFirestore fireStore;
  final FirebaseAuth auth;
  final GoogleSignIn googleSignIn;

  @override
  Future<void> forgotPassword(String email) {
    // TODO: implement forgotPassword
    throw UnimplementedError();
  }

  @override
  Stream<List<UserModel>> getAllUsers(UserModel userModel) {
    final userCollection = fireStore.collection("users");

    return userCollection
        .where('uid', isNotEqualTo: userModel.uid)
        .snapshots()
        .map((querySnapshot) {
      return querySnapshot.docs.map((e) => UserModel.fromSnapshot(e)).toList();
    });
  }

  @override
  Future<String> getCurrentUid() async => auth.currentUser!.uid;

  @override
  Future<void> createUser(UserModel userModel) async {
    final userCollection = fireStore.collection("users");
    final uid = await getCurrentUid();
    userCollection.doc(uid).get().then((userDoc) {
      if (!userDoc.exists) {
        final newUser = UserModel(
          email: userModel.email,
          uid: userModel.uid,
          name: userModel.name,
        ).toDocument();

        userCollection.doc(uid).set(newUser);
      } else {
        print("User already Exits!");
        return;
      }
    });
  }

  @override
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

  @override
  Future<void> updateUser(UserModel userModel) async {
    final userCollection = fireStore.collection("users");

    Map<String, dynamic> userInfo = Map();
    if (userModel.name != "") {
      userInfo['name'] = userModel.name;
    }

    await userCollection.doc(userModel.uid).update(userInfo);
  }

  @override
  Future<void> googleAuth() {
    // TODO: implement googleAuth
    throw UnimplementedError();
  }

  @override
  Future<bool> isSignedIn() async {
    return auth.currentUser?.uid != null;
  }

  @override
  Future<void> signIn(UserModel userModel) async {
    await auth.signInWithEmailAndPassword(
        email: userModel.email, password: userModel.password);
  }

  @override
  Future<void> signOut() async {
    await auth.signOut();
  }

  @override
  Future<void> signUp(UserModel userModel) async {
    await auth
        .createUserWithEmailAndPassword(
            email: userModel.email, password: userModel.password)
        .then((value) {
      createUser(userModel);
    });
  }
}
