import 'package:techx/features/categories/data/model/item_model.dart';
import 'package:techx/features/home/data/model/item_model.dart';

abstract class HomeSource {
  /// The function used to fetch the featured products
  Future<List<MiniItemModel>> getFeatured();

  /// The function used to fetch the new products
  Future<List<MiniItemModel>> getNew();

  /// The function used to fetch the banners
  Future<List<BannerItem>> getBanners();
}
