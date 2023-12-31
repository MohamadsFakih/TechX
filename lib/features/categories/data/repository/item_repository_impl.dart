import 'package:injectable/injectable.dart';
import 'package:techx/features/categories/data/remote/source/item_source.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';
import 'package:techx/features/categories/domain/repository/item_repository.dart';

import '../../../../core/data/model/enums.dart';
import '../model/item_model.dart';

@Injectable(as: MiniItemRepository)
class MiniItemRepositoryImpl implements MiniItemRepository {
  MiniItemRepositoryImpl(this._miniItemSource);

  /// The instance of [MiniItemSource]
  final MiniItemSource _miniItemSource;

  /// The function to get the selected set of items
  @override
  Future<List<MiniItemEntity>> getItems(
      MiniSubCategoryType miniSubCategoryType) async {
    // Converting from dynamic to the specified type in each list

    final List<MiniItemModel> miniItemModels =
        await _miniItemSource.getItems(miniSubCategoryType);

    final List<MiniItemEntity> miniItemEntities = miniItemModels.map((model) {
      List<String> stringImageList = model.imageLinks
          .map(
            (item) => item.toString(),
          )
          .toList();

      List<String> stringColorList = model.colors
          .map(
            (item) => item.toString(),
          )
          .toList();

      List<String> stringModelList = model.models
          .map(
            (item) => item.toString(),
          )
          .toList();

      List<String> stringLikesList = model.likes
          .map(
            (item) => item.toString(),
          )
          .toList();

      Map<String, String> specificationMap =
          model.specifications.map((key, value) {
        return MapEntry(
          key,
          value.toString(),
        );
      });

      return MiniItemEntity(
        id: model.id.trim(),
        name: model.name,
        description: model.description,
        image: model.image,
        price: model.price,
        imageLinks: stringImageList,
        models: stringModelList,
        colors: stringColorList,
        specifications: specificationMap,
        likes: stringLikesList,
      );
    }).toList();

    return miniItemEntities;
  }

  /// The function used to get the items the user added to their favorites
  @override
  Future<List<MiniItemEntity>> getFavorites(String uid) async {
    final List<MiniItemModel> miniItemModels =
        await _miniItemSource.getFavorites(uid);

    // Converting from dynamic to the specified type in each list

    final List<MiniItemEntity> miniItemEntities = miniItemModels.map((model) {
      List<String> stringImageList = model.imageLinks
          .map(
            (item) => item.toString(),
          )
          .toList();

      List<String> stringColorList = model.colors
          .map(
            (item) => item.toString(),
          )
          .toList();

      List<String> stringModelList = model.models
          .map(
            (item) => item.toString(),
          )
          .toList();

      List<String> stringLikesList = model.likes
          .map(
            (item) => item.toString(),
          )
          .toList();

      Map<String, String> specificationMap =
          model.specifications.map((key, value) {
        return MapEntry(key, value.toString());
      });

      return MiniItemEntity(
        id: model.id.trim(),
        name: model.name,
        description: model.description,
        image: model.image,
        price: model.price,
        imageLinks: stringImageList,
        models: stringModelList,
        colors: stringColorList,
        specifications: specificationMap,
        likes: stringLikesList,
      );
    }).toList();

    return miniItemEntities;
  }
}
