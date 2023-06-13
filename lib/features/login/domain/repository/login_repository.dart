import 'package:techx/features/login/data/model/login_credentials.dart';

abstract class LoginRepository {
  Future<void> googleAuth();
  Future<void> forgotPassword(String email);
  Future<void> signIn(LoginCredentials loginCredentials);
}
