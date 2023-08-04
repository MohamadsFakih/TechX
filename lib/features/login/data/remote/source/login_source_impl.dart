import 'package:injectable/injectable.dart';
import 'package:techx/features/login/data/model/login_credentials.dart';
import 'package:techx/features/login/data/remote/service/login_service.dart';
import 'package:techx/features/login/data/remote/source/login_source.dart';

@Injectable(as: LoginSource)
class LoginSourceImpl implements LoginSource {
  LoginSourceImpl(this._loginService);

  final LoginService _loginService;

  @override
  Future<void> forgotPassword(String email) =>
      _loginService.forgotPassword(email);

  @override
  Future<void> googleAuth() {
    throw UnimplementedError();
  }

  @override
  Future<String> signIn(LoginCredentials loginCredentials) =>
      _loginService.signIn(
        loginCredentials,
      );

  @override
  Future<LoginCredentials> getLoginCredentials() =>
      _loginService.getLoginCredentials();

  @override
  Future<void> rememberMe(String email, String password, bool toggleValue) =>
      _loginService.rememberMe(
        email,
        password,
        toggleValue,
      );
}
