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
  Future<List<MiniItemEntity>> getItems(
      MiniSubCategoryType miniSubCategoryType) async {
    final List<MiniItemModel> miniItemModels =
        await _miniItemSource.getItems(miniSubCategoryType);
    final List<MiniItemEntity> miniItemEntities = miniItemModels.map((model) {
      List<String> stringImageList =
          model.imageLinks.map((item) => item.toString()).toList();

      List<String> stringColorList =
          model.colors.map((item) => item.toString()).toList();

      List<String> stringModelList =
          model.models.map((item) => item.toString()).toList();

      List<String> stringSpecificationsList =
          model.specifications.map((item) => item.toString()).toList();

      List<String> stringLikesList =
          model.likes.map((item) => item.toString()).toList();

      return MiniItemEntity(
        id: model.id.trim(),
        name: model.name,
        description: model.description,
        image: model.image,
        price: model.price,
        imageLinks: stringImageList,
        models: stringModelList,
        colors: stringColorList,
        specifications: stringSpecificationsList,
        likes: stringLikesList,
      );
    }).toList();

    return miniItemEntities;
  }
}
