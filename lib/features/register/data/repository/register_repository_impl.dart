import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/features/register/data/model/register_params.dart';
import 'package:techx/features/register/data/remote/source/register_source.dart';
import 'package:techx/features/register/domain/entity/register_entity.dart';
import 'package:techx/features/register/domain/repository/register_repository.dart';

@Injectable(as: RegisterRepository)
class RegisterRepositoryImpl implements RegisterRepository {
  RegisterRepositoryImpl(this._registerSource);

  final RegisterSource _registerSource;

  @override
  Future<Either<String, Unit>> signUp(RegisterEntity registerEntity) async {
    try {
      await _registerSource.signUp(
        RegisterParams(
          name: registerEntity.name,
          email: registerEntity.email,
          password: registerEntity.password,
        ),
      );
      return right(unit);
    } catch (e) {
      return left(e.toString());
    }
  }
}
