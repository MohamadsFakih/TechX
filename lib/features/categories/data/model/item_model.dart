import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_model.freezed.dart';

@freezed
class MiniItemModel with _$MiniItemModel {
  const factory MiniItemModel({
    @Default('') String id,
    @Default('') String name,
    @Default('') String image,
    @Default('') String price,
    @Default('') String description,
    @Default([]) List<dynamic> imageLinks,
    @Default([]) List<dynamic> models,
    @Default([]) List<dynamic> colors,
    @Default([]) List<dynamic> likes,
    @Default({}) Map<String, dynamic> specifications,
  }) = _MiniItemModel;

  factory MiniItemModel.fromSnapshot(DocumentSnapshot snapshot) {
    var snapshotMap = snapshot.data() as Map<String, dynamic>;
    return MiniItemModel(
      id: snapshotMap['id'],
      name: snapshotMap['name'],
      description: snapshotMap['description'],
      price: snapshotMap['price'],
      image: snapshotMap['image'],
      imageLinks: snapshotMap['imageLinks'],
      models: snapshotMap['models'],
      colors: snapshotMap['colors'],
      specifications: snapshotMap['specifications'],
      likes: snapshotMap['likes'],
    );
  }
}
