import 'package:injectable/injectable.dart';
import 'package:techx/features/cart/data/remote/source/cart_source.dart';
import 'package:techx/features/cart/domain/repository/cart_repository.dart';
import 'package:techx/features/categories/data/model/item_model.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';

@Injectable(as: CartRepository)
class CartRepositoryImpl implements CartRepository {
  CartRepositoryImpl(this._cartSource);
  final CartSource _cartSource;

  @override
  Future<List<MiniItemEntity>> getCartItems(String id) async {
    final List<MiniItemModel> miniItemModels =
        await _cartSource.getCartItems(id);
    final List<MiniItemEntity> miniItemEntities = miniItemModels.map((model) {
      List<String> stringImageList =
          model.imageLinks.map((item) => item.toString()).toList();

      List<String> stringColorList =
          model.colors.map((item) => item.toString()).toList();

      List<String> stringModelList =
          model.models.map((item) => item.toString()).toList();

      List<String> stringSpecificationsList =
          model.specifications.map((item) => item.toString()).toList();

      List<String> stringLikesList =
          model.likes.map((item) => item.toString()).toList();

      return MiniItemEntity(
        id: model.id.trim(),
        name: model.name,
        description: model.description,
        image: model.image,
        price: model.price,
        imageLinks: stringImageList,
        models: stringModelList,
        colors: stringColorList,
        specifications: stringSpecificationsList,
        likes: stringLikesList,
      );
    }).toList();

    return miniItemEntities;
  }
}
