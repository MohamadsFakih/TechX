import 'package:injectable/injectable.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';
import 'package:techx/features/detailed/domain/repository/detailed_repository.dart';

@injectable
class DetailedUseCase {
  DetailedUseCase(this._detailedRepository);
  final DetailedRepository _detailedRepository;

  Future<void> addToCart(MiniItemEntity item) =>
      _detailedRepository.addToCart(item);
}
