import 'package:injectable/injectable.dart';
import 'package:techx/features/home/data/model/item_model.dart';
import 'package:techx/features/home/domain/repository/home_repository.dart';

@injectable
class HomeUseCase {
  HomeUseCase(this._homeRepository);

  final HomeRepository _homeRepository;

  Future<List<ItemModel>> getFeatured() => _homeRepository.getFeatured();
}
