import 'package:injectable/injectable.dart';
import 'package:techx/features/items/domain/entity/item_entity.dart';
import 'package:techx/features/items/domain/repository/item_repository.dart';

import '../../../../core/data/model/enums.dart';

@injectable
class MiniItemUseCase {
  MiniItemUseCase(this._itemRepository);
  final MiniItemRepository _itemRepository;

  Future<List<MiniItemEntity>> getApplePhones(
          MiniSubCategoryType miniSubCategoryType) =>
      _itemRepository.getApplePhones(miniSubCategoryType);
}
