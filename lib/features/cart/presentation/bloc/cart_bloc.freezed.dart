// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getCartItems,
    required TResult Function() getCreditCards,
    required TResult Function(String userId, String itemId) removeCartItem,
    required TResult Function(String userId) clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getCartItems,
    TResult? Function()? getCreditCards,
    TResult? Function(String userId, String itemId)? removeCartItem,
    TResult? Function(String userId)? clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getCartItems,
    TResult Function()? getCreditCards,
    TResult Function(String userId, String itemId)? removeCartItem,
    TResult Function(String userId)? clearCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCartItems value) getCartItems,
    required TResult Function(GetCreditCards value) getCreditCards,
    required TResult Function(RemoveCartItem value) removeCartItem,
    required TResult Function(ClearCart value) clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCartItems value)? getCartItems,
    TResult? Function(GetCreditCards value)? getCreditCards,
    TResult? Function(RemoveCartItem value)? removeCartItem,
    TResult? Function(ClearCart value)? clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCartItems value)? getCartItems,
    TResult Function(GetCreditCards value)? getCreditCards,
    TResult Function(RemoveCartItem value)? removeCartItem,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCartItemsCopyWith<$Res> {
  factory _$$GetCartItemsCopyWith(
          _$GetCartItems value, $Res Function(_$GetCartItems) then) =
      __$$GetCartItemsCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetCartItemsCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$GetCartItems>
    implements _$$GetCartItemsCopyWith<$Res> {
  __$$GetCartItemsCopyWithImpl(
      _$GetCartItems _value, $Res Function(_$GetCartItems) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetCartItems(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCartItems implements GetCartItems {
  const _$GetCartItems(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'CartEvent.getCartItems(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCartItems &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCartItemsCopyWith<_$GetCartItems> get copyWith =>
      __$$GetCartItemsCopyWithImpl<_$GetCartItems>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getCartItems,
    required TResult Function() getCreditCards,
    required TResult Function(String userId, String itemId) removeCartItem,
    required TResult Function(String userId) clearCart,
  }) {
    return getCartItems(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getCartItems,
    TResult? Function()? getCreditCards,
    TResult? Function(String userId, String itemId)? removeCartItem,
    TResult? Function(String userId)? clearCart,
  }) {
    return getCartItems?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getCartItems,
    TResult Function()? getCreditCards,
    TResult Function(String userId, String itemId)? removeCartItem,
    TResult Function(String userId)? clearCart,
    required TResult orElse(),
  }) {
    if (getCartItems != null) {
      return getCartItems(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCartItems value) getCartItems,
    required TResult Function(GetCreditCards value) getCreditCards,
    required TResult Function(RemoveCartItem value) removeCartItem,
    required TResult Function(ClearCart value) clearCart,
  }) {
    return getCartItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCartItems value)? getCartItems,
    TResult? Function(GetCreditCards value)? getCreditCards,
    TResult? Function(RemoveCartItem value)? removeCartItem,
    TResult? Function(ClearCart value)? clearCart,
  }) {
    return getCartItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCartItems value)? getCartItems,
    TResult Function(GetCreditCards value)? getCreditCards,
    TResult Function(RemoveCartItem value)? removeCartItem,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (getCartItems != null) {
      return getCartItems(this);
    }
    return orElse();
  }
}

abstract class GetCartItems implements CartEvent {
  const factory GetCartItems(final String id) = _$GetCartItems;

  String get id;
  @JsonKey(ignore: true)
  _$$GetCartItemsCopyWith<_$GetCartItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCreditCardsCopyWith<$Res> {
  factory _$$GetCreditCardsCopyWith(
          _$GetCreditCards value, $Res Function(_$GetCreditCards) then) =
      __$$GetCreditCardsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCreditCardsCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$GetCreditCards>
    implements _$$GetCreditCardsCopyWith<$Res> {
  __$$GetCreditCardsCopyWithImpl(
      _$GetCreditCards _value, $Res Function(_$GetCreditCards) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCreditCards implements GetCreditCards {
  const _$GetCreditCards();

  @override
  String toString() {
    return 'CartEvent.getCreditCards()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCreditCards);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getCartItems,
    required TResult Function() getCreditCards,
    required TResult Function(String userId, String itemId) removeCartItem,
    required TResult Function(String userId) clearCart,
  }) {
    return getCreditCards();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getCartItems,
    TResult? Function()? getCreditCards,
    TResult? Function(String userId, String itemId)? removeCartItem,
    TResult? Function(String userId)? clearCart,
  }) {
    return getCreditCards?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getCartItems,
    TResult Function()? getCreditCards,
    TResult Function(String userId, String itemId)? removeCartItem,
    TResult Function(String userId)? clearCart,
    required TResult orElse(),
  }) {
    if (getCreditCards != null) {
      return getCreditCards();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCartItems value) getCartItems,
    required TResult Function(GetCreditCards value) getCreditCards,
    required TResult Function(RemoveCartItem value) removeCartItem,
    required TResult Function(ClearCart value) clearCart,
  }) {
    return getCreditCards(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCartItems value)? getCartItems,
    TResult? Function(GetCreditCards value)? getCreditCards,
    TResult? Function(RemoveCartItem value)? removeCartItem,
    TResult? Function(ClearCart value)? clearCart,
  }) {
    return getCreditCards?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCartItems value)? getCartItems,
    TResult Function(GetCreditCards value)? getCreditCards,
    TResult Function(RemoveCartItem value)? removeCartItem,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (getCreditCards != null) {
      return getCreditCards(this);
    }
    return orElse();
  }
}

abstract class GetCreditCards implements CartEvent {
  const factory GetCreditCards() = _$GetCreditCards;
}

/// @nodoc
abstract class _$$RemoveCartItemCopyWith<$Res> {
  factory _$$RemoveCartItemCopyWith(
          _$RemoveCartItem value, $Res Function(_$RemoveCartItem) then) =
      __$$RemoveCartItemCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, String itemId});
}

/// @nodoc
class __$$RemoveCartItemCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$RemoveCartItem>
    implements _$$RemoveCartItemCopyWith<$Res> {
  __$$RemoveCartItemCopyWithImpl(
      _$RemoveCartItem _value, $Res Function(_$RemoveCartItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? itemId = null,
  }) {
    return _then(_$RemoveCartItem(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveCartItem implements RemoveCartItem {
  const _$RemoveCartItem(this.userId, this.itemId);

  @override
  final String userId;
  @override
  final String itemId;

  @override
  String toString() {
    return 'CartEvent.removeCartItem(userId: $userId, itemId: $itemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveCartItem &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.itemId, itemId) || other.itemId == itemId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, itemId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveCartItemCopyWith<_$RemoveCartItem> get copyWith =>
      __$$RemoveCartItemCopyWithImpl<_$RemoveCartItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getCartItems,
    required TResult Function() getCreditCards,
    required TResult Function(String userId, String itemId) removeCartItem,
    required TResult Function(String userId) clearCart,
  }) {
    return removeCartItem(userId, itemId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getCartItems,
    TResult? Function()? getCreditCards,
    TResult? Function(String userId, String itemId)? removeCartItem,
    TResult? Function(String userId)? clearCart,
  }) {
    return removeCartItem?.call(userId, itemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getCartItems,
    TResult Function()? getCreditCards,
    TResult Function(String userId, String itemId)? removeCartItem,
    TResult Function(String userId)? clearCart,
    required TResult orElse(),
  }) {
    if (removeCartItem != null) {
      return removeCartItem(userId, itemId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCartItems value) getCartItems,
    required TResult Function(GetCreditCards value) getCreditCards,
    required TResult Function(RemoveCartItem value) removeCartItem,
    required TResult Function(ClearCart value) clearCart,
  }) {
    return removeCartItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCartItems value)? getCartItems,
    TResult? Function(GetCreditCards value)? getCreditCards,
    TResult? Function(RemoveCartItem value)? removeCartItem,
    TResult? Function(ClearCart value)? clearCart,
  }) {
    return removeCartItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCartItems value)? getCartItems,
    TResult Function(GetCreditCards value)? getCreditCards,
    TResult Function(RemoveCartItem value)? removeCartItem,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (removeCartItem != null) {
      return removeCartItem(this);
    }
    return orElse();
  }
}

abstract class RemoveCartItem implements CartEvent {
  const factory RemoveCartItem(final String userId, final String itemId) =
      _$RemoveCartItem;

  String get userId;
  String get itemId;
  @JsonKey(ignore: true)
  _$$RemoveCartItemCopyWith<_$RemoveCartItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearCartCopyWith<$Res> {
  factory _$$ClearCartCopyWith(
          _$ClearCart value, $Res Function(_$ClearCart) then) =
      __$$ClearCartCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$ClearCartCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$ClearCart>
    implements _$$ClearCartCopyWith<$Res> {
  __$$ClearCartCopyWithImpl(
      _$ClearCart _value, $Res Function(_$ClearCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$ClearCart(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClearCart implements ClearCart {
  const _$ClearCart(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'CartEvent.clearCart(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearCart &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClearCartCopyWith<_$ClearCart> get copyWith =>
      __$$ClearCartCopyWithImpl<_$ClearCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getCartItems,
    required TResult Function() getCreditCards,
    required TResult Function(String userId, String itemId) removeCartItem,
    required TResult Function(String userId) clearCart,
  }) {
    return clearCart(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getCartItems,
    TResult? Function()? getCreditCards,
    TResult? Function(String userId, String itemId)? removeCartItem,
    TResult? Function(String userId)? clearCart,
  }) {
    return clearCart?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getCartItems,
    TResult Function()? getCreditCards,
    TResult Function(String userId, String itemId)? removeCartItem,
    TResult Function(String userId)? clearCart,
    required TResult orElse(),
  }) {
    if (clearCart != null) {
      return clearCart(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCartItems value) getCartItems,
    required TResult Function(GetCreditCards value) getCreditCards,
    required TResult Function(RemoveCartItem value) removeCartItem,
    required TResult Function(ClearCart value) clearCart,
  }) {
    return clearCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCartItems value)? getCartItems,
    TResult? Function(GetCreditCards value)? getCreditCards,
    TResult? Function(RemoveCartItem value)? removeCartItem,
    TResult? Function(ClearCart value)? clearCart,
  }) {
    return clearCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCartItems value)? getCartItems,
    TResult Function(GetCreditCards value)? getCreditCards,
    TResult Function(RemoveCartItem value)? removeCartItem,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (clearCart != null) {
      return clearCart(this);
    }
    return orElse();
  }
}

abstract class ClearCart implements CartEvent {
  const factory ClearCart(final String userId) = _$ClearCart;

  String get userId;
  @JsonKey(ignore: true)
  _$$ClearCartCopyWith<_$ClearCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  /// The list of cart items
  List<CartModel> get items => throw _privateConstructorUsedError;

  /// The list of credit cards
  List<CreditEntity> get creditCards => throw _privateConstructorUsedError;

  /// Determines if the screen is loading
  bool get isLoading => throw _privateConstructorUsedError;

  /// Used to store errors
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call(
      {List<CartModel> items,
      List<CreditEntity> creditCards,
      bool isLoading,
      String error});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? creditCards = null,
    Object? isLoading = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
      creditCards: null == creditCards
          ? _value.creditCards
          : creditCards // ignore: cast_nullable_to_non_nullable
              as List<CreditEntity>,
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
abstract class _$$_InitialCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CartModel> items,
      List<CreditEntity> creditCards,
      bool isLoading,
      String error});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? creditCards = null,
    Object? isLoading = null,
    Object? error = null,
  }) {
    return _then(_$_Initial(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
      creditCards: null == creditCards
          ? _value._creditCards
          : creditCards // ignore: cast_nullable_to_non_nullable
              as List<CreditEntity>,
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
  const _$_Initial(
      {final List<CartModel> items = const [],
      final List<CreditEntity> creditCards = const [],
      this.isLoading = false,
      this.error = ''})
      : _items = items,
        _creditCards = creditCards;

  /// The list of cart items
  final List<CartModel> _items;

  /// The list of cart items
  @override
  @JsonKey()
  List<CartModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  /// The list of credit cards
  final List<CreditEntity> _creditCards;

  /// The list of credit cards
  @override
  @JsonKey()
  List<CreditEntity> get creditCards {
    if (_creditCards is EqualUnmodifiableListView) return _creditCards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_creditCards);
  }

  /// Determines if the screen is loading
  @override
  @JsonKey()
  final bool isLoading;

  /// Used to store errors
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'CartState(items: $items, creditCards: $creditCards, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality()
                .equals(other._creditCards, _creditCards) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_creditCards),
      isLoading,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements CartState {
  const factory _Initial(
      {final List<CartModel> items,
      final List<CreditEntity> creditCards,
      final bool isLoading,
      final String error}) = _$_Initial;

  @override

  /// The list of cart items
  List<CartModel> get items;
  @override

  /// The list of credit cards
  List<CreditEntity> get creditCards;
  @override

  /// Determines if the screen is loading
  bool get isLoading;
  @override

  /// Used to store errors
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
