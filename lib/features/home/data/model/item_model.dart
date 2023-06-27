import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_model.freezed.dart';

@freezed
class ItemModel with _$ItemModel {
  const factory ItemModel({
    @Default('') String id,
    @Default('') String name,
    @Default('') String price,
    @Default('') String image,
  }) = _ItemModel;

  factory ItemModel.fromSnapshot(DocumentSnapshot snapshot) {
    var snapshotMap = snapshot.data() as Map<String, dynamic>;
    return ItemModel(
      name: snapshotMap['name'],
      price: snapshotMap['price'],
      image: snapshotMap['image'],
      id: snapshotMap['id'],
    );
  }
}

@freezed
class BannerItem with _$BannerItem {
  const factory BannerItem({
    @Default('') String image,
  }) = _BannerItem;

  factory BannerItem.fromSnapshot(DocumentSnapshot snapshot) {
    var snapshotMap = snapshot.data() as Map<String, dynamic>;
    return BannerItem(
      image: snapshotMap['image'],
    );
  }
}
