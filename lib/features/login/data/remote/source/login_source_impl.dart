import 'package:injectable/injectable.dart';
import 'package:techx/features/login/data/model/login_credentials.dart';
import 'package:techx/features/login/data/remote/service/login_service.dart';
import 'package:techx/features/login/data/remote/source/login_source.dart';

@Injectable(as: LoginSource)
class LoginSourceImpl implements LoginSource {
  LoginSourceImpl(this._loginService);

  /// The instance of [LoginService]
  final LoginService _loginService;

  /// A function to allow the user to change their password
  @override
  Future<void> forgotPassword(String email) =>
      _loginService.forgotPassword(email);

  /// A function to login from google
  @override
  Future<void> googleAuth() {
    throw UnimplementedError();
  }

  /// The function used to sign a user in
  @override
  Future<String> signIn(LoginCredentials loginCredentials) =>
      _loginService.signIn(
        loginCredentials,
      );

  /// The function used to get the saved credentials
  @override
  Future<LoginCredentials> getLoginCredentials() =>
      _loginService.getLoginCredentials();

  /// The function used to save the user's credentials locally
  @override
  Future<void> rememberMe(String email, String password, bool toggleValue) =>
      _loginService.rememberMe(
        email,
        password,
        toggleValue,
      );
}
