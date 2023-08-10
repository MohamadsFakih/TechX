import 'package:injectable/injectable.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';
import 'package:techx/features/home/data/model/item_model.dart';
import 'package:techx/features/home/domain/repository/home_repository.dart';

@injectable
class HomeUseCase {
  HomeUseCase(this._homeRepository);

  /// The instance of [HomeRepository]
  final HomeRepository _homeRepository;

  /// The function used to fetch the featured products
  Future<List<MiniItemEntity>> getFeatured() => _homeRepository.getFeatured();

  /// The function used to fetch the banners
  Future<List<BannerItem>> getBanners() => _homeRepository.getBanners();

  /// The function used to fetch the new products
  Future<List<MiniItemEntity>> getNew() => _homeRepository.getNew();
}
