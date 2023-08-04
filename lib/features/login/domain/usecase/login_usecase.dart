import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/features/login/data/model/login_credentials.dart';
import 'package:techx/features/login/domain/repository/login_repository.dart';

@injectable
class LoginUseCase {
  LoginUseCase(this._loginRepository);

  final LoginRepository _loginRepository;

  Future<void> googleAuth() => _loginRepository.googleAuth();

  Future<LoginCredentials> getLoginCredentials() =>
      _loginRepository.getLoginCredentials();

  Future<void> forgotPassword(String email) =>
      _loginRepository.forgotPassword(email);

  Future<Either<String, String>> signIn(LoginCredentials loginCredentials) =>
      _loginRepository.signIn(
        loginCredentials,
      );

  Future<void> rememberMe(String email, String password, bool toggleValue) =>
      _loginRepository.rememberMe(
        email,
        password,
        toggleValue,
      );
}
