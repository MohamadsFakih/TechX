import 'package:injectable/injectable.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';
import 'package:techx/features/detailed/domain/repository/detailed_repository.dart';

@injectable
class DetailedUseCase {
  DetailedUseCase(this._detailedRepository);

  /// The instance of [DetailedRepository]
  final DetailedRepository _detailedRepository;

  /// The function to add an item to the cart
  /// it takes the [item] user [id] and [quantity]
  Future<void> addToCart(MiniItemEntity item, String id, int quantity,
          String model, String color) =>
      _detailedRepository.addToCart(item, id, quantity, model, color);
}
