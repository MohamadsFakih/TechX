import 'package:techx/features/login/data/model/login_credentials.dart';

abstract class LoginSource {
  Future<void> googleAuth();
  Future<LoginCredentials> getLoginCredentials();
  Future<void> forgotPassword(
    String email,
  );
  Future<String> signIn(
    LoginCredentials loginCredentials,
  );
  Future<void> rememberMe(
    String email,
    String password,
    bool toggleValue,
  );
}
