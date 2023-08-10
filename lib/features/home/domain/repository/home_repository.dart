import 'package:techx/features/categories/domain/entity/item_entity.dart';
import 'package:techx/features/home/data/model/item_model.dart';

abstract class HomeRepository {
  /// The function used to fetch the featured products
  Future<List<MiniItemEntity>> getFeatured();

  /// The function used to fetch the new products
  Future<List<MiniItemEntity>> getNew();

  /// The function used to fetch the banners
  Future<List<BannerItem>> getBanners();
}
