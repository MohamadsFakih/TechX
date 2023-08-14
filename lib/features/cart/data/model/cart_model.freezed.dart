// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartModel {
  /// The id of the cart item
  String get id => throw _privateConstructorUsedError;

  /// The name of the cart item
  String get name => throw _privateConstructorUsedError;

  /// The cover image of the cart item
  String get image => throw _privateConstructorUsedError;

  /// The price of the cart item
  String get price => throw _privateConstructorUsedError;

  /// The description of the cart item
  String get description => throw _privateConstructorUsedError;

  /// The selected model of the cart item
  String get model => throw _privateConstructorUsedError;

  /// The selected color of the cart item
  String get color => throw _privateConstructorUsedError;

  /// The quantity of the cart item
  int get quantity => throw _privateConstructorUsedError;

  /// The specifications of the cart item
  Map<String, dynamic> get specifications => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartModelCopyWith<CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartModelCopyWith<$Res> {
  factory $CartModelCopyWith(CartModel value, $Res Function(CartModel) then) =
      _$CartModelCopyWithImpl<$Res, CartModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String image,
      String price,
      String description,
      String model,
      String color,
      int quantity,
      Map<String, dynamic> specifications});
}

/// @nodoc
class _$CartModelCopyWithImpl<$Res, $Val extends CartModel>
    implements $CartModelCopyWith<$Res> {
  _$CartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? price = null,
    Object? description = null,
    Object? model = null,
    Object? color = null,
    Object? quantity = null,
    Object? specifications = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      specifications: null == specifications
          ? _value.specifications
          : specifications // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartModelCopyWith<$Res> implements $CartModelCopyWith<$Res> {
  factory _$$_CartModelCopyWith(
          _$_CartModel value, $Res Function(_$_CartModel) then) =
      __$$_CartModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String image,
      String price,
      String description,
      String model,
      String color,
      int quantity,
      Map<String, dynamic> specifications});
}

/// @nodoc
class __$$_CartModelCopyWithImpl<$Res>
    extends _$CartModelCopyWithImpl<$Res, _$_CartModel>
    implements _$$_CartModelCopyWith<$Res> {
  __$$_CartModelCopyWithImpl(
      _$_CartModel _value, $Res Function(_$_CartModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? price = null,
    Object? description = null,
    Object? model = null,
    Object? color = null,
    Object? quantity = null,
    Object? specifications = null,
  }) {
    return _then(_$_CartModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      specifications: null == specifications
          ? _value._specifications
          : specifications // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$_CartModel implements _CartModel {
  const _$_CartModel(
      {this.id = '',
      this.name = '',
      this.image = '',
      this.price = '',
      this.description = '',
      this.model = '',
      this.color = '',
      this.quantity = 0,
      final Map<String, dynamic> specifications = const {}})
      : _specifications = specifications;

  /// The id of the cart item
  @override
  @JsonKey()
  final String id;

  /// The name of the cart item
  @override
  @JsonKey()
  final String name;

  /// The cover image of the cart item
  @override
  @JsonKey()
  final String image;

  /// The price of the cart item
  @override
  @JsonKey()
  final String price;

  /// The description of the cart item
  @override
  @JsonKey()
  final String description;

  /// The selected model of the cart item
  @override
  @JsonKey()
  final String model;

  /// The selected color of the cart item
  @override
  @JsonKey()
  final String color;

  /// The quantity of the cart item
  @override
  @JsonKey()
  final int quantity;

  /// The specifications of the cart item
  final Map<String, dynamic> _specifications;

  /// The specifications of the cart item
  @override
  @JsonKey()
  Map<String, dynamic> get specifications {
    if (_specifications is EqualUnmodifiableMapView) return _specifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_specifications);
  }

  @override
  String toString() {
    return 'CartModel(id: $id, name: $name, image: $image, price: $price, description: $description, model: $model, color: $color, quantity: $quantity, specifications: $specifications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            const DeepCollectionEquality()
                .equals(other._specifications, _specifications));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      image,
      price,
      description,
      model,
      color,
      quantity,
      const DeepCollectionEquality().hash(_specifications));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartModelCopyWith<_$_CartModel> get copyWith =>
      __$$_CartModelCopyWithImpl<_$_CartModel>(this, _$identity);
}

abstract class _CartModel implements CartModel {
  const factory _CartModel(
      {final String id,
      final String name,
      final String image,
      final String price,
      final String description,
      final String model,
      final String color,
      final int quantity,
      final Map<String, dynamic> specifications}) = _$_CartModel;

  @override

  /// The id of the cart item
  String get id;
  @override

  /// The name of the cart item
  String get name;
  @override

  /// The cover image of the cart item
  String get image;
  @override

  /// The price of the cart item
  String get price;
  @override

  /// The description of the cart item
  String get description;
  @override

  /// The selected model of the cart item
  String get model;
  @override

  /// The selected color of the cart item
  String get color;
  @override

  /// The quantity of the cart item
  int get quantity;
  @override

  /// The specifications of the cart item
  Map<String, dynamic> get specifications;
  @override
  @JsonKey(ignore: true)
  _$$_CartModelCopyWith<_$_CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}
