import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/features/common/data/remote/source/user_source.dart';
import 'package:techx/features/common/domain/entity/user_entity.dart';
import 'package:techx/features/common/domain/repository/user_repository.dart';

@Injectable(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl(this._userSource);

  final UserSource _userSource;

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

  @override
  Future<Either<String, Unit>> addLike(String id, String collection) async {
    try {
      await _userSource.addLike(id, collection);
      return right(unit);
    } catch (e) {
      return left(e.toString());
    }
  }
}
