import 'package:techx/features/categories/domain/entity/item_entity.dart';

abstract class DetailedLocalSource {
  Future<void> addToCart(MiniItemEntity item);
}
