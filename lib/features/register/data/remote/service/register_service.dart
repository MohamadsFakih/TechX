import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/features/register/data/model/register_params.dart';

@injectable
class RegisterService {
  RegisterService(this.auth, this.fireStore);
  final FirebaseAuth auth;
  final FirebaseFirestore fireStore;

  Future<String> _getCurrentUid() async => auth.currentUser!.uid;

  Future<void> _createUser(RegisterSavedParams registerSavedParams) async {
    final userCollection = fireStore.collection("users");
    final uid = await _getCurrentUid();
    userCollection.doc(uid).get().then((userDoc) {
      if (!userDoc.exists) {
        final newUser = registerSavedParams.toDocument();

        userCollection.doc(uid).set(newUser);
      } else {
        print("User already Exits!");
        return;
      }
    });
  }

  Future<void> signUp(RegisterParams registerParams) async {
    await auth
        .createUserWithEmailAndPassword(
            email: registerParams.email, password: registerParams.password)
        .then((value) {
      _createUser(RegisterSavedParams(
          uid: value.user!.uid,
          email: registerParams.email,
          name: registerParams.name));
    });
  }
}
