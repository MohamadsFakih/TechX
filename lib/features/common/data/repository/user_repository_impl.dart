import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';
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
  Future<void> signOut() async {
    await _userSource.signOut();
  }

  @override
  Stream<List<UserEntity>> getSingleUser(UserEntity userEntity) {
    throw UnimplementedError();
  }

  @override
  Future<Either<String, Unit>> addLike(
      MiniItemEntity item, String collection) async {
    try {
      await _userSource.addLike(item, collection);
      return right(unit);
    } catch (e) {
      return left(e.toString());
    }
  }
}
