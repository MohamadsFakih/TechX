import 'package:techx/features/register/data/model/register_params.dart';

abstract class RegisterSource {
  Future<void> signUp(RegisterParams registerParams);
}
