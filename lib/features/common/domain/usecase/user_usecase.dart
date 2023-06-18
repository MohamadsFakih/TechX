import 'package:injectable/injectable.dart';
import 'package:techx/features/common/domain/entity/user_entity.dart';
import 'package:techx/features/common/domain/repository/user_repository.dart';

@injectable
class UserUseCase {
  UserUseCase(this._userRepository);
  final UserRepository _userRepository;

  Future<bool> isSignedIn() => _userRepository.isSignedIn();

  Future<String> getCurrentUid() => _userRepository.getCurrentUid();

  Stream<List<UserEntity>> getAllUsers(UserEntity userEntity) =>
      _userRepository.getAllUsers(userEntity);

  Stream<List<UserEntity>> getSingleUser(UserEntity userEntity) =>
      _userRepository.getSingleUser(userEntity);
}
