import 'package:dartz/dartz.dart';
import 'package:techx/features/login/data/model/login_credentials.dart';

abstract class LoginRepository {
  Future<void> googleAuth();
  Future<void> forgotPassword(String email);
  Future<Either<String, Unit>> signIn(LoginCredentials loginCredentials);
}
