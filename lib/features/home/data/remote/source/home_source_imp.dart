import 'package:injectable/injectable.dart';
import 'package:techx/features/categories/data/model/item_model.dart';
import 'package:techx/features/home/data/model/item_model.dart';
import 'package:techx/features/home/data/remote/service/home_service.dart';
import 'package:techx/features/home/data/remote/source/home_source.dart';

@Injectable(as: HomeSource)
class HomeSourceImpl implements HomeSource {
  HomeSourceImpl(this._homeService);

  /// The instance of [HomeService]
  final HomeService _homeService;

  /// The function used to fetch the featured products
  @override
  Future<List<MiniItemModel>> getFeatured() => _homeService.getFeatured();

  /// The function used to fetch the new products
  @override
  Future<List<MiniItemModel>> getNew() => _homeService.getNew();

  /// The function used to fetch the banners
  @override
  Future<List<BannerItem>> getBanners() => _homeService.getBanners();
}
