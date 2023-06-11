import 'package:injectable/injectable.dart';
import 'package:techx/core/user/data/model/user_model.dart';
import 'package:techx/core/user/data/remote/source/user_source.dart';
import 'package:techx/core/user/domain/entity/user_entity.dart';
import 'package:techx/core/user/domain/repository/user_repository.dart';

@Injectable(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl(this._userSource);

  final UserSource _userSource;

  @override
  Future<void> createUser(UserEntity userEntity) async {
    UserModel userModel = UserModel(
        uid: userEntity.uid,
        email: userEntity.email,
        name: userEntity.name,
        password: userEntity.password);
    await _userSource.createUser(userModel);
  }

  @override
  Future<void> forgotPassword(String email) async {
    await _userSource.forgotPassword(email);
  }

  @override
  Stream<List<UserEntity>> getAllUsers(UserEntity userEntity) {
    UserModel userModel = UserModel(
        uid: userEntity.uid,
        name: userEntity.name,
        email: userEntity.email,
        password: userEntity.password);
    return _userSource.getAllUsers(userModel).map((List<UserModel> userModels) {
      return userModels.map((UserModel userModel) {
        UserEntity userEntity = UserEntity(
            uid: userModel.uid,
            name: userModel.name,
            email: userModel.email,
            password: userModel.password);
        return userEntity;
      }).toList();
    });
  }

  @override
  Future<String> getCurrentUid() async {
    return await _userSource.getCurrentUid();
  }

  @override
  Stream<List<UserEntity>> getSingleUser(UserEntity userEntity) {
    // TODO: implement getSingleUser
    throw UnimplementedError();
  }

  @override
  Future<void> googleAuth() async {
    await _userSource.googleAuth();
  }

  @override
  Future<bool> isSignedIn() async {
    return await _userSource.isSignedIn();
  }

  @override
  Future<void> signIn(UserEntity userEntity) async {
    UserModel userModel = UserModel(
        uid: userEntity.uid,
        email: userEntity.email,
        name: userEntity.name,
        password: userEntity.password);
    await _userSource.signIn(userModel);
  }

  @override
  Future<void> signOut() async {
    await _userSource.signOut();
  }

  @override
  Future<void> signUp(UserEntity userEntity) async {
    UserModel userModel = UserModel(
        uid: userEntity.uid,
        email: userEntity.email,
        name: userEntity.name,
        password: userEntity.password);
    await _userSource.signUp(userModel);
  }

  @override
  Future<void> updateUser(UserEntity userEntity) async {
    UserModel userModel = UserModel(
        uid: userEntity.uid,
        email: userEntity.email,
        name: userEntity.name,
        password: userEntity.password);
    await _userSource.updateUser(userModel);
  }
}
