import 'package:injectable/injectable.dart';
import 'package:techx/features/categories/data/model/item_model.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';
import 'package:techx/features/detailed/data/remote/source/detailed_local_source.dart';
import 'package:techx/features/detailed/domain/repository/detailed_repository.dart';

@Injectable(as: DetailedRepository)
class DetailedRepositoryImpl implements DetailedRepository {
  DetailedRepositoryImpl(this._detailedLocalSource);
  final DetailedLocalSource _detailedLocalSource;
  @override
  Future<void> addToCart(MiniItemEntity item, String id, int quantity,
      String model, String color) async {
    await _detailedLocalSource.addToCart(
      MiniItemModel(
        id: item.id,
        name: item.name,
        image: item.image,
        price: item.price,
        description: item.description,
        imageLinks: item.imageLinks,
        models: item.models,
        likes: item.likes,
        colors: item.colors,
        specifications: item.specifications,
      ),
      id,
      quantity,
      model,
      color,
    );
  }
}
