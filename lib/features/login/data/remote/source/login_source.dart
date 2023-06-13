import 'package:techx/features/login/data/model/login_credentials.dart';

abstract class LoginSource {
  Future<void> googleAuth();
  Future<void> forgotPassword(String email);
  Future<void> signIn(LoginCredentials loginCredentials);
}
