// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailedEvent {
  MiniItemEntity get itemEntity => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MiniItemEntity itemEntity, String id,
            int quantity, String model, String color)
        addToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MiniItemEntity itemEntity, String id, int quantity,
            String model, String color)?
        addToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MiniItemEntity itemEntity, String id, int quantity,
            String model, String color)?
        addToCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddToCart value) addToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddToCart value)? addToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddToCart value)? addToCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailedEventCopyWith<DetailedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedEventCopyWith<$Res> {
  factory $DetailedEventCopyWith(
          DetailedEvent value, $Res Function(DetailedEvent) then) =
      _$DetailedEventCopyWithImpl<$Res, DetailedEvent>;
  @useResult
  $Res call(
      {MiniItemEntity itemEntity,
      String id,
      int quantity,
      String model,
      String color});

  $MiniItemEntityCopyWith<$Res> get itemEntity;
}

/// @nodoc
class _$DetailedEventCopyWithImpl<$Res, $Val extends DetailedEvent>
    implements $DetailedEventCopyWith<$Res> {
  _$DetailedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemEntity = null,
    Object? id = null,
    Object? quantity = null,
    Object? model = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      itemEntity: null == itemEntity
          ? _value.itemEntity
          : itemEntity // ignore: cast_nullable_to_non_nullable
              as MiniItemEntity,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MiniItemEntityCopyWith<$Res> get itemEntity {
    return $MiniItemEntityCopyWith<$Res>(_value.itemEntity, (value) {
      return _then(_value.copyWith(itemEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddToCartCopyWith<$Res>
    implements $DetailedEventCopyWith<$Res> {
  factory _$$AddToCartCopyWith(
          _$AddToCart value, $Res Function(_$AddToCart) then) =
      __$$AddToCartCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MiniItemEntity itemEntity,
      String id,
      int quantity,
      String model,
      String color});

  @override
  $MiniItemEntityCopyWith<$Res> get itemEntity;
}

/// @nodoc
class __$$AddToCartCopyWithImpl<$Res>
    extends _$DetailedEventCopyWithImpl<$Res, _$AddToCart>
    implements _$$AddToCartCopyWith<$Res> {
  __$$AddToCartCopyWithImpl(
      _$AddToCart _value, $Res Function(_$AddToCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemEntity = null,
    Object? id = null,
    Object? quantity = null,
    Object? model = null,
    Object? color = null,
  }) {
    return _then(_$AddToCart(
      null == itemEntity
          ? _value.itemEntity
          : itemEntity // ignore: cast_nullable_to_non_nullable
              as MiniItemEntity,
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddToCart implements AddToCart {
  const _$AddToCart(
      this.itemEntity, this.id, this.quantity, this.model, this.color);

  @override
  final MiniItemEntity itemEntity;
  @override
  final String id;
  @override
  final int quantity;
  @override
  final String model;
  @override
  final String color;

  @override
  String toString() {
    return 'DetailedEvent.addToCart(itemEntity: $itemEntity, id: $id, quantity: $quantity, model: $model, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCart &&
            (identical(other.itemEntity, itemEntity) ||
                other.itemEntity == itemEntity) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, itemEntity, id, quantity, model, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartCopyWith<_$AddToCart> get copyWith =>
      __$$AddToCartCopyWithImpl<_$AddToCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MiniItemEntity itemEntity, String id,
            int quantity, String model, String color)
        addToCart,
  }) {
    return addToCart(itemEntity, id, quantity, model, color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MiniItemEntity itemEntity, String id, int quantity,
            String model, String color)?
        addToCart,
  }) {
    return addToCart?.call(itemEntity, id, quantity, model, color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MiniItemEntity itemEntity, String id, int quantity,
            String model, String color)?
        addToCart,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(itemEntity, id, quantity, model, color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddToCart value) addToCart,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddToCart value)? addToCart,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddToCart value)? addToCart,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class AddToCart implements DetailedEvent {
  const factory AddToCart(final MiniItemEntity itemEntity, final String id,
      final int quantity, final String model, final String color) = _$AddToCart;

  @override
  MiniItemEntity get itemEntity;
  @override
  String get id;
  @override
  int get quantity;
  @override
  String get model;
  @override
  String get color;
  @override
  @JsonKey(ignore: true)
  _$$AddToCartCopyWith<_$AddToCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailedState {
  /// To check if the page is loading
  bool get isLoading => throw _privateConstructorUsedError;

  /// Used to catch errors
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailedStateCopyWith<DetailedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedStateCopyWith<$Res> {
  factory $DetailedStateCopyWith(
          DetailedState value, $Res Function(DetailedState) then) =
      _$DetailedStateCopyWithImpl<$Res, DetailedState>;
  @useResult
  $Res call({bool isLoading, String error});
}

/// @nodoc
class _$DetailedStateCopyWithImpl<$Res, $Val extends DetailedState>
    implements $DetailedStateCopyWith<$Res> {
  _$DetailedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $DetailedStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, String error});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$DetailedStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = null,
  }) {
    return _then(_$_Initial(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({this.isLoading = false, this.error = ''});

  /// To check if the page is loading
  @override
  @JsonKey()
  final bool isLoading;

  /// Used to catch errors
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'DetailedState(isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements DetailedState {
  const factory _Initial({final bool isLoading, final String error}) =
      _$_Initial;

  @override

  /// To check if the page is loading
  bool get isLoading;
  @override

  /// Used to catch errors
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
