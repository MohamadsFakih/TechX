import 'package:techx/features/register/data/model/register_params.dart';

abstract class RegisterSource {
  /// The function to sign a user up
  Future<void> signUp(RegisterParams registerParams);
}
