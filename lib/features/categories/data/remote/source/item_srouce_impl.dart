import 'package:injectable/injectable.dart';
import 'package:techx/core/data/model/enums.dart';
import 'package:techx/features/categories/data/model/item_model.dart';
import 'package:techx/features/categories/data/remote/service/item_service.dart';

import 'item_source.dart';

@Injectable(as: MiniItemSource)
class MiniItemSourceImp implements MiniItemSource {
  MiniItemSourceImp(this._miniItemService);
  final MiniItemService _miniItemService;
  @override
  Future<List<MiniItemModel>> getItems(
          MiniSubCategoryType miniSubCategoryType) =>
      _miniItemService.getItems(miniSubCategoryType);
}
