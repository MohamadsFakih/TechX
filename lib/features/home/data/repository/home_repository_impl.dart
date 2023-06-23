import 'package:injectable/injectable.dart';
import 'package:techx/features/home/data/model/item_model.dart';
import 'package:techx/features/home/data/remote/source/home_source.dart';
import 'package:techx/features/home/domain/repository/home_repository.dart';

@Injectable(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl(this._homeSource);

  final HomeSource _homeSource;
  @override
  Stream<List<ItemModel>> getFeatured() => _homeSource.getFeatured();
}