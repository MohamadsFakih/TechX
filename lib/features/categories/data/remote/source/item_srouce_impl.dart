import 'package:injectable/injectable.dart';
import 'package:techx/core/data/model/enums.dart';
import 'package:techx/features/categories/data/model/item_model.dart';
import 'package:techx/features/categories/data/remote/service/item_service.dart';

import 'item_source.dart';

@Injectable(as: MiniItemSource)
class MiniItemSourceImp implements MiniItemSource {
  MiniItemSourceImp(this._miniItemService);

  /// The instance of [MiniItemService]
  final MiniItemService _miniItemService;

  /// The function to get the selected set of items
  @override
  Future<List<MiniItemModel>> getItems(
          MiniSubCategoryType miniSubCategoryType) =>
      _miniItemService.getItems(miniSubCategoryType);

  /// The function used to get the items the user added to their favorites
  @override
  Future<List<MiniItemModel>> getFavorites(String uid) =>
      _miniItemService.getFavorites(uid);
}
