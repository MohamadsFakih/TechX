import 'package:techx/features/login/data/model/login_credentials.dart';

abstract class LoginSource {
  /// A function to login from google
  Future<void> googleAuth();

  /// The function used to get the saved credentials
  Future<LoginCredentials> getLoginCredentials();

  /// A function to allow the user to change their password
  Future<void> forgotPassword(
    String email,
  );

  /// The function used to sign a user in
  Future<String> signIn(
    LoginCredentials loginCredentials,
  );

  /// The function used to save the user's credentials locally
  Future<void> rememberMe(
    String email,
    String password,
    bool toggleValue,
  );
}
