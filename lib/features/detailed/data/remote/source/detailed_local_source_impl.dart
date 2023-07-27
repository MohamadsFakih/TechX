import 'package:injectable/injectable.dart';
import 'package:techx/features/categories/data/model/item_model.dart';
import 'package:techx/features/detailed/data/remote/service/detailed_local_service.dart';
import 'package:techx/features/detailed/data/remote/source/detailed_local_source.dart';

@Injectable(as: DetailedLocalSource)
class DetailedLocalSourceImpl implements DetailedLocalSource {
  DetailedLocalSourceImpl(this._detailedLocalService);
  final DetailedLocalService _detailedLocalService;

  @override
  Future<void> addToCart(MiniItemModel item, String id) =>
      _detailedLocalService.addToCart(item, id);
}
