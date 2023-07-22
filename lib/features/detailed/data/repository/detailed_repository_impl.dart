import 'package:injectable/injectable.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';
import 'package:techx/features/detailed/data/local/source/detailed_local_source.dart';
import 'package:techx/features/detailed/domain/repository/detailed_repository.dart';

@Injectable(as: DetailedRepository)
class DetailedRepositoryImpl implements DetailedRepository {
  DetailedRepositoryImpl(this._detailedLocalSource);
  final DetailedLocalSource _detailedLocalSource;
  @override
  Future<void> addToCart(MiniItemEntity item) =>
      _detailedLocalSource.addToCart(item);
}
