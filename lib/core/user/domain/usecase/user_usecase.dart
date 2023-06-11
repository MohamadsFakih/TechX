import 'package:injectable/injectable.dart';
import 'package:techx/core/user/domain/entity/user_entity.dart';
import 'package:techx/core/user/domain/repository/user_repository.dart';

@injectable
class UserUseCase {
  UserUseCase(this._userRepository);
  final UserRepository _userRepository;

  Future<void> googleAuth() => _userRepository.googleAuth();
  Future<void> createUser(UserEntity userEntity) =>
      _userRepository.createUser(userEntity);
  Future<void> forgotPassword(String email) =>
      _userRepository.forgotPassword(email);
  Future<bool> isSignedIn() => _userRepository.isSignedIn();
  Future<void> signIn(UserEntity userEntity) =>
      _userRepository.signIn(userEntity);
  Future<void> signUp(UserEntity userEntity) =>
      _userRepository.signUp(userEntity);
  Future<void> signOut() => _userRepository.signOut();
  Future<void> updateUser(UserEntity userEntity) =>
      _userRepository.updateUser(userEntity);
  Future<String> getCurrentUid() => _userRepository.getCurrentUid();
  Stream<List<UserEntity>> getAllUsers(UserEntity userEntity) =>
      _userRepository.getAllUsers(userEntity);
  Stream<List<UserEntity>> getSingleUser(UserEntity userEntity) =>
      _userRepository.getSingleUser(userEntity);
}
