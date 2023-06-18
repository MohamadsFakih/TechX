import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/features/login/data/model/login_credentials.dart';
import 'package:techx/features/login/domain/repository/login_repository.dart';

@injectable
class LoginUseCase {
  LoginUseCase(this._loginRepository);
  final LoginRepository _loginRepository;
  Future<void> googleAuth() => _loginRepository.googleAuth();
  Future<void> forgotPassword(String email) =>
      _loginRepository.forgotPassword(email);
  Future<Either<String, Unit>> signIn(LoginCredentials loginCredentials) =>
      _loginRepository.signIn(loginCredentials);
}
