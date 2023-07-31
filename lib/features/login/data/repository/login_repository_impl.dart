import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:techx/features/login/data/model/login_credentials.dart';
import 'package:techx/features/login/data/remote/source/login_source.dart';
import 'package:techx/features/login/domain/repository/login_repository.dart';

@Injectable(as: LoginRepository)
class LoginRepositoryImpl implements LoginRepository {
  LoginRepositoryImpl(this._loginSource);

  final LoginSource _loginSource;

  @override
  Future<void> forgotPassword(String email) {
    throw UnimplementedError();
  }

  @override
  Future<void> googleAuth() {
    throw UnimplementedError();
  }

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
}
