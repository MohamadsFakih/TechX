import 'package:injectable/injectable.dart';
import 'package:techx/features/register/domain/entity/register_entity.dart';
import 'package:techx/features/register/domain/repository/register_repository.dart';

@injectable
class RegisterUseCase {
  RegisterUseCase(this._registerRepository);
  final RegisterRepository _registerRepository;

  Future<void> signUp(RegisterEntity registerEntity) =>
      _registerRepository.signUp(registerEntity);
}
