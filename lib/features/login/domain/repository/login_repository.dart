import 'package:dartz/dartz.dart';

import 'package:techx/features/login/data/model/login_credentials.dart';

abstract class LoginRepository {
  Future<void> googleAuth();
  Future<LoginCredentials> getLoginCredentials();
  Future<void> forgotPassword(
    String email,
  );
  Future<Either<String, String>> signIn(
    LoginCredentials loginCredentials,
  );
  Future<void> rememberMe(
    String email,
    String password,
    bool toggleValue,
  );
}
