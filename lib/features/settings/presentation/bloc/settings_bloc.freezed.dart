// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCreditCards,
    required TResult Function(CreditEntity creditEntity) addCreditCard,
    required TResult Function(String cardNumber) deleteCreditCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCreditCards,
    TResult? Function(CreditEntity creditEntity)? addCreditCard,
    TResult? Function(String cardNumber)? deleteCreditCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCreditCards,
    TResult Function(CreditEntity creditEntity)? addCreditCard,
    TResult Function(String cardNumber)? deleteCreditCard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCreditCards value) getCreditCards,
    required TResult Function(AddCreditCard value) addCreditCard,
    required TResult Function(DeleteCreditCard value) deleteCreditCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCreditCards value)? getCreditCards,
    TResult? Function(AddCreditCard value)? addCreditCard,
    TResult? Function(DeleteCreditCard value)? deleteCreditCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCreditCards value)? getCreditCards,
    TResult Function(AddCreditCard value)? addCreditCard,
    TResult Function(DeleteCreditCard value)? deleteCreditCard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCreditCardsCopyWith<$Res> {
  factory _$$GetCreditCardsCopyWith(
          _$GetCreditCards value, $Res Function(_$GetCreditCards) then) =
      __$$GetCreditCardsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCreditCardsCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$GetCreditCards>
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
    return 'SettingsEvent.getCreditCards()';
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
    required TResult Function() getCreditCards,
    required TResult Function(CreditEntity creditEntity) addCreditCard,
    required TResult Function(String cardNumber) deleteCreditCard,
  }) {
    return getCreditCards();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCreditCards,
    TResult? Function(CreditEntity creditEntity)? addCreditCard,
    TResult? Function(String cardNumber)? deleteCreditCard,
  }) {
    return getCreditCards?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCreditCards,
    TResult Function(CreditEntity creditEntity)? addCreditCard,
    TResult Function(String cardNumber)? deleteCreditCard,
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
    required TResult Function(GetCreditCards value) getCreditCards,
    required TResult Function(AddCreditCard value) addCreditCard,
    required TResult Function(DeleteCreditCard value) deleteCreditCard,
  }) {
    return getCreditCards(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCreditCards value)? getCreditCards,
    TResult? Function(AddCreditCard value)? addCreditCard,
    TResult? Function(DeleteCreditCard value)? deleteCreditCard,
  }) {
    return getCreditCards?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCreditCards value)? getCreditCards,
    TResult Function(AddCreditCard value)? addCreditCard,
    TResult Function(DeleteCreditCard value)? deleteCreditCard,
    required TResult orElse(),
  }) {
    if (getCreditCards != null) {
      return getCreditCards(this);
    }
    return orElse();
  }
}

abstract class GetCreditCards implements SettingsEvent {
  const factory GetCreditCards() = _$GetCreditCards;
}

/// @nodoc
abstract class _$$AddCreditCardCopyWith<$Res> {
  factory _$$AddCreditCardCopyWith(
          _$AddCreditCard value, $Res Function(_$AddCreditCard) then) =
      __$$AddCreditCardCopyWithImpl<$Res>;
  @useResult
  $Res call({CreditEntity creditEntity});

  $CreditEntityCopyWith<$Res> get creditEntity;
}

/// @nodoc
class __$$AddCreditCardCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$AddCreditCard>
    implements _$$AddCreditCardCopyWith<$Res> {
  __$$AddCreditCardCopyWithImpl(
      _$AddCreditCard _value, $Res Function(_$AddCreditCard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditEntity = null,
  }) {
    return _then(_$AddCreditCard(
      null == creditEntity
          ? _value.creditEntity
          : creditEntity // ignore: cast_nullable_to_non_nullable
              as CreditEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CreditEntityCopyWith<$Res> get creditEntity {
    return $CreditEntityCopyWith<$Res>(_value.creditEntity, (value) {
      return _then(_value.copyWith(creditEntity: value));
    });
  }
}

/// @nodoc

class _$AddCreditCard implements AddCreditCard {
  const _$AddCreditCard(this.creditEntity);

  @override
  final CreditEntity creditEntity;

  @override
  String toString() {
    return 'SettingsEvent.addCreditCard(creditEntity: $creditEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCreditCard &&
            (identical(other.creditEntity, creditEntity) ||
                other.creditEntity == creditEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, creditEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCreditCardCopyWith<_$AddCreditCard> get copyWith =>
      __$$AddCreditCardCopyWithImpl<_$AddCreditCard>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCreditCards,
    required TResult Function(CreditEntity creditEntity) addCreditCard,
    required TResult Function(String cardNumber) deleteCreditCard,
  }) {
    return addCreditCard(creditEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCreditCards,
    TResult? Function(CreditEntity creditEntity)? addCreditCard,
    TResult? Function(String cardNumber)? deleteCreditCard,
  }) {
    return addCreditCard?.call(creditEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCreditCards,
    TResult Function(CreditEntity creditEntity)? addCreditCard,
    TResult Function(String cardNumber)? deleteCreditCard,
    required TResult orElse(),
  }) {
    if (addCreditCard != null) {
      return addCreditCard(creditEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCreditCards value) getCreditCards,
    required TResult Function(AddCreditCard value) addCreditCard,
    required TResult Function(DeleteCreditCard value) deleteCreditCard,
  }) {
    return addCreditCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCreditCards value)? getCreditCards,
    TResult? Function(AddCreditCard value)? addCreditCard,
    TResult? Function(DeleteCreditCard value)? deleteCreditCard,
  }) {
    return addCreditCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCreditCards value)? getCreditCards,
    TResult Function(AddCreditCard value)? addCreditCard,
    TResult Function(DeleteCreditCard value)? deleteCreditCard,
    required TResult orElse(),
  }) {
    if (addCreditCard != null) {
      return addCreditCard(this);
    }
    return orElse();
  }
}

abstract class AddCreditCard implements SettingsEvent {
  const factory AddCreditCard(final CreditEntity creditEntity) =
      _$AddCreditCard;

  CreditEntity get creditEntity;
  @JsonKey(ignore: true)
  _$$AddCreditCardCopyWith<_$AddCreditCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCreditCardCopyWith<$Res> {
  factory _$$DeleteCreditCardCopyWith(
          _$DeleteCreditCard value, $Res Function(_$DeleteCreditCard) then) =
      __$$DeleteCreditCardCopyWithImpl<$Res>;
  @useResult
  $Res call({String cardNumber});
}

/// @nodoc
class __$$DeleteCreditCardCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$DeleteCreditCard>
    implements _$$DeleteCreditCardCopyWith<$Res> {
  __$$DeleteCreditCardCopyWithImpl(
      _$DeleteCreditCard _value, $Res Function(_$DeleteCreditCard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardNumber = null,
  }) {
    return _then(_$DeleteCreditCard(
      null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteCreditCard implements DeleteCreditCard {
  const _$DeleteCreditCard(this.cardNumber);

  @override
  final String cardNumber;

  @override
  String toString() {
    return 'SettingsEvent.deleteCreditCard(cardNumber: $cardNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCreditCard &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cardNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCreditCardCopyWith<_$DeleteCreditCard> get copyWith =>
      __$$DeleteCreditCardCopyWithImpl<_$DeleteCreditCard>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCreditCards,
    required TResult Function(CreditEntity creditEntity) addCreditCard,
    required TResult Function(String cardNumber) deleteCreditCard,
  }) {
    return deleteCreditCard(cardNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCreditCards,
    TResult? Function(CreditEntity creditEntity)? addCreditCard,
    TResult? Function(String cardNumber)? deleteCreditCard,
  }) {
    return deleteCreditCard?.call(cardNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCreditCards,
    TResult Function(CreditEntity creditEntity)? addCreditCard,
    TResult Function(String cardNumber)? deleteCreditCard,
    required TResult orElse(),
  }) {
    if (deleteCreditCard != null) {
      return deleteCreditCard(cardNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCreditCards value) getCreditCards,
    required TResult Function(AddCreditCard value) addCreditCard,
    required TResult Function(DeleteCreditCard value) deleteCreditCard,
  }) {
    return deleteCreditCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCreditCards value)? getCreditCards,
    TResult? Function(AddCreditCard value)? addCreditCard,
    TResult? Function(DeleteCreditCard value)? deleteCreditCard,
  }) {
    return deleteCreditCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCreditCards value)? getCreditCards,
    TResult Function(AddCreditCard value)? addCreditCard,
    TResult Function(DeleteCreditCard value)? deleteCreditCard,
    required TResult orElse(),
  }) {
    if (deleteCreditCard != null) {
      return deleteCreditCard(this);
    }
    return orElse();
  }
}

abstract class DeleteCreditCard implements SettingsEvent {
  const factory DeleteCreditCard(final String cardNumber) = _$DeleteCreditCard;

  String get cardNumber;
  @JsonKey(ignore: true)
  _$$DeleteCreditCardCopyWith<_$DeleteCreditCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsState {
  /// The list of credit cards
  List<CreditEntity> get creditCards => throw _privateConstructorUsedError;

  /// To check if the screen is loading
  bool get isLoading => throw _privateConstructorUsedError;

  /// To catch errors
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call({List<CreditEntity> creditCards, bool isLoading, String error});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditCards = null,
    Object? isLoading = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_InitialCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CreditEntity> creditCards, bool isLoading, String error});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditCards = null,
    Object? isLoading = null,
    Object? error = null,
  }) {
    return _then(_$_Initial(
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
      {final List<CreditEntity> creditCards = const [],
      this.isLoading = false,
      this.error = ""})
      : _creditCards = creditCards;

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

  /// To check if the screen is loading
  @override
  @JsonKey()
  final bool isLoading;

  /// To catch errors
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'SettingsState(creditCards: $creditCards, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other._creditCards, _creditCards) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_creditCards), isLoading, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements SettingsState {
  const factory _Initial(
      {final List<CreditEntity> creditCards,
      final bool isLoading,
      final String error}) = _$_Initial;

  @override

  /// The list of credit cards
  List<CreditEntity> get creditCards;
  @override

  /// To check if the screen is loading
  bool get isLoading;
  @override

  /// To catch errors
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
