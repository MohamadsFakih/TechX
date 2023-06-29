import 'package:injectable/injectable.dart';
import 'package:techx/features/categories/data/remote/source/item_source.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';
import 'package:techx/features/categories/domain/repository/item_repository.dart';

import '../../../../core/data/model/enums.dart';
import '../model/item_model.dart';

@Injectable(as: MiniItemRepository)
class MiniItemRepositoryImpl implements MiniItemRepository {
  MiniItemRepositoryImpl(this._miniItemSource);
  final MiniItemSource _miniItemSource;
  @override
  Future<List<MiniItemEntity>> getApplePhones(
      MiniSubCategoryType miniSubCategoryType) async {
    final List<MiniItemModel> miniItemModels =
        await _miniItemSource.getApplePhones(miniSubCategoryType);
    final List<MiniItemEntity> miniItemEntities = miniItemModels.map((model) {
      return MiniItemEntity(
        name: model.name,
        description: model.description,
        image: model.image,
        price: model.price,
      );
    }).toList();

    return miniItemEntities;
  }
}
