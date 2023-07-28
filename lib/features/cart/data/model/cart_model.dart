import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_model.freezed.dart';

@freezed
class CartModel with _$CartModel {
  const factory CartModel({
    @Default('') String id,
    @Default('') String name,
    @Default('') String image,
    @Default('') String price,
    @Default('') String description,
    @Default('') String model,
    @Default('') String color,
    @Default(0) int quantity,
    @Default([]) List<dynamic> specifications,
  }) = _CartModel;

  factory CartModel.fromSnapshot(DocumentSnapshot snapshot) {
    var snapshotMap = snapshot.data() as Map<String, dynamic>;
    return CartModel(
      id: snapshotMap['id'],
      name: snapshotMap['name'],
      description: snapshotMap['description'],
      price: snapshotMap['price'],
      image: snapshotMap['image'],
      model: snapshotMap['model'],
      color: snapshotMap['color'],
      specifications: snapshotMap['specifications'],
      quantity: snapshotMap['quantity'],
    );
  }
}
