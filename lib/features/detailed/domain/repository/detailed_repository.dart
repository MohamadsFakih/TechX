import 'package:techx/features/categories/domain/entity/item_entity.dart';

abstract class DetailedRepository {
  Future<void> addToCart(MiniItemEntity item);
}
