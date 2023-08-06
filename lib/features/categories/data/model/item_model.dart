import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_model.freezed.dart';

@freezed
class MiniItemModel with _$MiniItemModel {
  const factory MiniItemModel({
    /// The id of the item
    @Default('') String id,

    /// The name of the item
    @Default('') String name,

    /// The cover image of the item
    @Default('') String image,

    /// The price of the item
    @Default('') String price,

    /// The item description
    @Default('') String description,

    /// The images shown in the detailed page
    @Default([]) List<dynamic> imageLinks,

    /// The different models of the item
    @Default([]) List<dynamic> models,

    /// The different colors of the item
    @Default([]) List<dynamic> colors,

    /// The user ids that added a favorite to the item
    @Default([]) List<dynamic> likes,

    /// The specifications to build the table in teh detaield page
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
