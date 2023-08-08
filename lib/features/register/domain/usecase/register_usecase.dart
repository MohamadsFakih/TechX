import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/features/register/domain/entity/register_entity.dart';
import 'package:techx/features/register/domain/repository/register_repository.dart';

@injectable
class RegisterUseCase {
  RegisterUseCase(this._registerRepository);

  /// The instance of [RegisterRepository]
  final RegisterRepository _registerRepository;

  /// The function to sign a user up
  /// Returns either an error [String] or nothing
  Future<Either<String, Unit>> signUp(RegisterEntity registerEntity) =>
      _registerRepository.signUp(registerEntity);
}
