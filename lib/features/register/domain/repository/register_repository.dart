import 'package:techx/features/register/domain/entity/register_entity.dart';

abstract class RegisterRepository {
  Future<void> signUp(RegisterEntity registerEntity);
}
