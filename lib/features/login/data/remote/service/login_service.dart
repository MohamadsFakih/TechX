import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
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

  Future<String> signIn(LoginCredentials loginCredentials) async {
    final result = await auth.signInWithEmailAndPassword(
      email: loginCredentials.email,
      password: loginCredentials.password,
    );

    return result.user?.uid ?? "";
  }

  Future<void> rememberMe(
      String email, String password, bool toggleValue) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (toggleValue) {
      await prefs.setString(
        'savedEmail',
        email,
      );
      await prefs.setString(
        'savedPassword',
        password,
      );
      await prefs.setBool(
        'isRememberMe',
        true,
      );
    } else {
      await prefs.setBool(
        'isRememberMe',
        false,
      );
    }
  }

  Future<LoginCredentials> getLoginCredentials() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool? isRemembered = prefs.getBool('isRememberMe');

    if (isRemembered != null && isRemembered) {
      final String email = prefs.getString('savedEmail') ?? '';
      final String pass = prefs.getString('savedPassword') ?? '';
      return LoginCredentials(
        email: email,
        password: pass,
      );
    } else {
      return LoginCredentials(
        email: '',
        password: '',
      );
    }
  }
}
