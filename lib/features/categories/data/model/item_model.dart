import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_model.freezed.dart';

@freezed
class MiniItemModel with _$MiniItemModel {
  const factory MiniItemModel({
    @Default('') name,
    @Default('') image,
    @Default('') price,
    @Default('') description,
  }) = _MiniItemModel;

  factory MiniItemModel.fromSnapshot(DocumentSnapshot snapshot) {
    var snapshotMap = snapshot.data() as Map<String, dynamic>;
    return MiniItemModel(
      name: snapshotMap['name'],
      description: snapshotMap['description'],
      price: snapshotMap['price'],
      image: snapshotMap['image'],
    );
  }
}
