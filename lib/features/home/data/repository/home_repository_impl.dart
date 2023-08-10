import 'package:injectable/injectable.dart';
import 'package:techx/features/categories/data/model/item_model.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';
import 'package:techx/features/home/data/model/item_model.dart';
import 'package:techx/features/home/data/remote/source/home_source.dart';
import 'package:techx/features/home/domain/repository/home_repository.dart';

@Injectable(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl(this._homeSource);

  /// The instance of [HomeSource]
  final HomeSource _homeSource;

  /// The function used to fetch the featured products
  @override
  Future<List<MiniItemEntity>> getFeatured() async {
    // Converting from dynamic to the specified type in each list

    final List<MiniItemModel> miniItemModels = await _homeSource.getFeatured();

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

  /// The function used to fetch the banners
  @override
  Future<List<BannerItem>> getBanners() => _homeSource.getBanners();

  /// The function used to fetch the new products
  @override
  Future<List<MiniItemEntity>> getNew() async {
    // Converting from dynamic to the specified type in each list

    final List<MiniItemModel> miniItemModels = await _homeSource.getNew();

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
}
