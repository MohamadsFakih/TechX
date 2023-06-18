import 'package:injectable/injectable.dart';
import 'package:techx/features/common/data/model/user_model.dart';
import 'package:techx/features/common/data/remote/source/user_source.dart';
import 'package:techx/features/common/domain/entity/user_entity.dart';
import 'package:techx/features/common/domain/repository/user_repository.dart';

@Injectable(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl(this._userSource);

  final UserSource _userSource;

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
  Future<bool> isSignedIn() async {
    return await _userSource.isSignedIn();
  }

  @override
  Stream<List<UserEntity>> getSingleUser(UserEntity userEntity) {
    throw UnimplementedError();
  }
}
