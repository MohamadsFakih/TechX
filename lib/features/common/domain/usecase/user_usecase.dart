import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';
import 'package:techx/features/common/domain/repository/user_repository.dart';

@injectable
class UserUseCase {
  UserUseCase(this._userRepository);
  final UserRepository _userRepository;

  Future<bool> isSignedIn() => _userRepository.isSignedIn();

  Future<String> getCurrentUid() => _userRepository.getCurrentUid();

  Future<void> signOut() => _userRepository.signOut();

  Future<Either<String, Unit>> addLike(
          MiniItemEntity item, String collection) =>
      _userRepository.addLike(item, collection);
}
