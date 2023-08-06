import 'package:injectable/injectable.dart';
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
  Future<List<ItemModel>> getFeatured() => _homeSource.getFeatured();

  /// The function used to fetch the banners
  @override
  Future<List<BannerItem>> getBanners() => _homeSource.getBanners();

  /// The function used to fetch the new products
  @override
  Future<List<ItemModel>> getNew() => _homeSource.getNew();
}
