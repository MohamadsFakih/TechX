import 'package:injectable/injectable.dart';
import 'package:techx/features/home/data/model/item_model.dart';
import 'package:techx/features/home/data/remote/service/home_service.dart';
import 'package:techx/features/home/data/remote/source/home_source.dart';

@Injectable(as: HomeSource)
class HomeSourceImpl implements HomeSource {
  HomeSourceImpl(this._homeService);

  final HomeService _homeService;

  @override
  Future<List<ItemModel>> getFeatured() => _homeService.getFeatured();
}
