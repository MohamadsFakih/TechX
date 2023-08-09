import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/features/register/data/model/register_params.dart';

@injectable
class RegisterService {
  RegisterService(this.auth, this.fireStore);

  /// The instance of [FirebaseAuth]
  final FirebaseAuth auth;

  /// The instance of [FirebaseFirestore]
  final FirebaseFirestore fireStore;

  /// Returns the current user's id
  Future<String> _getCurrentUid() async => auth.currentUser!.uid;

  /// Teh function that creates a user in the database
  Future<void> _createUser(RegisterSavedParams registerSavedParams) async {
    final userCollection = fireStore.collection("users");
    final uid = await _getCurrentUid();
    userCollection.doc(uid).get().then((userDoc) {
      if (!userDoc.exists) {
        userCollection.doc(uid).set({
          "name": registerSavedParams.name,
          "email": registerSavedParams.email,
          "uid": uid,
        });
      } else {
        return;
      }
    });
  }

  /// The function to sign a user up
  /// Returns the user Id
  Future<String> signUp(RegisterParams registerParams) async {
    String id = "";
    await auth
        .createUserWithEmailAndPassword(
            email: registerParams.email, password: registerParams.password)
        .then((value) {
      id = value.user!.uid;
      _createUser(RegisterSavedParams(
          uid: value.user!.uid,
          email: registerParams.email,
          name: registerParams.name));
    });
    return id;
  }
}
