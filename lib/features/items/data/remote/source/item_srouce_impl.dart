import 'package:injectable/injectable.dart';
import 'package:techx/core/data/model/enums.dart';
import 'package:techx/features/items/data/model/item_model.dart';
import 'package:techx/features/items/data/remote/service/item_service.dart';

import 'item_source.dart';

@Injectable(as: MiniItemSource)
class MiniItemSourceImp implements MiniItemSource {
  MiniItemSourceImp(this._miniItemService);
  final MiniItemService _miniItemService;
  @override
  Future<List<MiniItemModel>> getApplePhones(
          MiniSubCategoryType miniSubCategoryType) =>
      _miniItemService.getApplePhones(miniSubCategoryType);
}
