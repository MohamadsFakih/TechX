import 'package:injectable/injectable.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';
import 'package:techx/features/categories/domain/repository/item_repository.dart';

import '../../../../core/data/model/enums.dart';

@injectable
class MiniItemUseCase {
  MiniItemUseCase(this._itemRepository);

  /// The instance of [MiniItemRepository]
  final MiniItemRepository _itemRepository;

  /// The function to get the selected set of items
  Future<List<MiniItemEntity>> getItems(
          MiniSubCategoryType miniSubCategoryType) =>
      _itemRepository.getItems(miniSubCategoryType);

  /// The function used to get the items the user added to their favorites
  Future<List<MiniItemEntity>> getFavorites(String uid) =>
      _itemRepository.getFavorites(uid);
}
