import 'package:techx/features/home/data/model/item_model.dart';

abstract class HomeRepository {
  Stream<List<ItemModel>> getFeatured();
}
