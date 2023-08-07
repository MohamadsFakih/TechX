import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:techx/features/login/data/model/login_credentials.dart';

@injectable
class LoginService {
  LoginService(this.auth);

  /// The instance of [FirebaseAuth]
  final FirebaseAuth auth;

  /// A function to allow the user to change their password
  Future<void> forgotPassword(String email) async {
    await auth.sendPasswordResetEmail(email: email);
  }

  /// A function to login from google
  Future<void> googleAuth() {
    throw UnimplementedError();
  }

  /// The function used to sign a user in
  /// Return the logged in user's id
  Future<String> signIn(LoginCredentials loginCredentials) async {
    final result = await auth.signInWithEmailAndPassword(
      email: loginCredentials.email,
      password: loginCredentials.password,
    );

    return result.user?.uid ?? "";
  }

  /// The function used to save the user's credentials locally
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

  /// The function used to get the saved credentials
  Future<LoginCredentials> getLoginCredentials() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool? isRemembered = prefs.getBool('isRememberMe');

    if (isRemembered != null && isRemembered) {
      final String email = prefs.getString('savedEmail') ?? '';
      final String pass = prefs.getString('savedPassword') ?? '';
      return LoginCredentials(
          email: email, password: pass, isRemembered: isRemembered);
    } else {
      return LoginCredentials(
        email: '',
        password: '',
        isRemembered: false,
      );
    }
  }
}
