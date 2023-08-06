import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_model.freezed.dart';

@freezed
class CartModel with _$CartModel {
  const factory CartModel({
    /// The id of the cart item
    @Default('') String id,

    /// The name of the cart item
    @Default('') String name,

    /// The cover image of the cart item
    @Default('') String image,

    /// The price of the cart item
    @Default('') String price,

    /// The description of the cart item
    @Default('') String description,

    /// The selected model of the cart item
    @Default('') String model,

    /// The selected color of the cart item
    @Default('') String color,

    /// The quantity of the cart item
    @Default(0) int quantity,

    /// The specifications of the cart item
    @Default({}) Map<String, dynamic> specifications,
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
