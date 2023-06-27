import 'package:techx/features/home/data/model/item_model.dart';

abstract class HomeSource {
  Future<List<ItemModel>> getFeatured();
  Future<List<ItemModel>> getNew();
  Future<List<BannerItem>> getBanners();
}
