import 'package:injectable/injectable.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';
import 'package:techx/features/detailed/data/local/service/detailed_local_service.dart';
import 'package:techx/features/detailed/data/local/source/detailed_local_source.dart';

@Injectable(as: DetailedLocalSource)
class DetailedLocalSourceImpl implements DetailedLocalSource {
  DetailedLocalSourceImpl(this._detailedLocalService);
  final DetailedLocalService _detailedLocalService;

  @override
  Future<void> addToCart(MiniItemEntity item) =>
      _detailedLocalService.addToCart(item);
}
