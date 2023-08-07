import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:techx/features/login/data/model/login_credentials.dart';
import 'package:techx/features/login/data/remote/source/login_source.dart';
import 'package:techx/features/login/domain/repository/login_repository.dart';

@Injectable(as: LoginRepository)
class LoginRepositoryImpl implements LoginRepository {
  LoginRepositoryImpl(this._loginSource);

  /// The instance of [LoginSource]
  final LoginSource _loginSource;

  /// A function to allow the user to change their password
  @override
  Future<void> forgotPassword(String email) =>
      _loginSource.forgotPassword(email);

  /// The function to login from google
  @override
  Future<void> googleAuth() {
    throw UnimplementedError();
  }

  /// The function used to sign a user in
  /// Return either an error [String] or the logged in user Id
  @override
  Future<Either<String, String>> signIn(
      LoginCredentials loginCredentials) async {
    try {
      final result = await _loginSource.signIn(loginCredentials);
      return right(result);
    } catch (e) {
      return left(e.toString());
    }
  }

  /// The function used to get the saved credentials
  @override
  Future<LoginCredentials> getLoginCredentials() =>
      _loginSource.getLoginCredentials();

  /// The function used to save the user's credentials locally
  @override
  Future<void> rememberMe(String email, String password, bool toggleValue) =>
      _loginSource.rememberMe(
        email,
        password,
        toggleValue,
      );
}
