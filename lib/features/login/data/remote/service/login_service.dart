import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/features/login/data/model/login_credentials.dart';

@injectable
class LoginService {
  LoginService(this.auth);
  final FirebaseAuth auth;

  Future<void> forgotPassword(String email) {
    throw UnimplementedError();
  }

  Future<void> googleAuth() {
    throw UnimplementedError();
  }

  Future<void> signIn(LoginCredentials loginCredentials) async {
    await auth.signInWithEmailAndPassword(
        email: loginCredentials.email, password: loginCredentials.password);
  }
}
