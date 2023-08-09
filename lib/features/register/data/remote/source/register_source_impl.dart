import 'package:injectable/injectable.dart';
import 'package:techx/features/register/data/model/register_params.dart';
import 'package:techx/features/register/data/remote/service/register_service.dart';
import 'package:techx/features/register/data/remote/source/register_source.dart';

@Injectable(as: RegisterSource)
class RegisterSourceImpl implements RegisterSource {
  RegisterSourceImpl(this._registerService);

  /// The instance of [RegisterService]
  final RegisterService _registerService;

  /// The function to sign a user up
  @override
  Future<String> signUp(RegisterParams registerParams) =>
      _registerService.signUp(registerParams);
}
