import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/features/login/data/model/login_credentials.dart';
import 'package:techx/features/login/domain/repository/login_repository.dart';

@injectable
class LoginUseCase {
  LoginUseCase(this._loginRepository);

  /// The instance of [LoginRepository]
  final LoginRepository _loginRepository;

  /// A function to login from google
  Future<void> googleAuth() => _loginRepository.googleAuth();

  /// The function used to get the saved credentials
  Future<LoginCredentials> getLoginCredentials() =>
      _loginRepository.getLoginCredentials();

  /// A function to allow the user to change their password
  Future<void> forgotPassword(String email) =>
      _loginRepository.forgotPassword(email);

  /// The function used to sign a user in
  /// Return either an error [String] or the logged in user Id
  Future<Either<String, String>> signIn(LoginCredentials loginCredentials) =>
      _loginRepository.signIn(
        loginCredentials,
      );

  /// The function used to save the user's credentials locally
  Future<void> rememberMe(String email, String password, bool toggleValue) =>
      _loginRepository.rememberMe(
        email,
        password,
        toggleValue,
      );
}
