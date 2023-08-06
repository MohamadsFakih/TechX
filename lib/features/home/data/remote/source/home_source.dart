import 'package:techx/features/home/data/model/item_model.dart';

abstract class HomeSource {
  /// The function used to fetch the featured products
  Future<List<ItemModel>> getFeatured();

  /// The function used to fetch the new products
  Future<List<ItemModel>> getNew();

  /// The function used to fetch the banners
  Future<List<BannerItem>> getBanners();
}
