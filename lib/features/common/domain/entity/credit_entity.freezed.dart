// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreditEntity {
  /// The credit card type
  MyCardType get cardType => throw _privateConstructorUsedError;

  /// The credit card number
  String get cardNumber => throw _privateConstructorUsedError;

  /// The credit card holder
  String get cardHolder => throw _privateConstructorUsedError;

  /// The credit card cvv
  String get cardCvv => throw _privateConstructorUsedError;

  /// The credit card expiry date
  String get cardDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreditEntityCopyWith<CreditEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditEntityCopyWith<$Res> {
  factory $CreditEntityCopyWith(
          CreditEntity value, $Res Function(CreditEntity) then) =
      _$CreditEntityCopyWithImpl<$Res, CreditEntity>;
  @useResult
  $Res call(
      {MyCardType cardType,
      String cardNumber,
      String cardHolder,
      String cardCvv,
      String cardDate});
}

/// @nodoc
class _$CreditEntityCopyWithImpl<$Res, $Val extends CreditEntity>
    implements $CreditEntityCopyWith<$Res> {
  _$CreditEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardType = null,
    Object? cardNumber = null,
    Object? cardHolder = null,
    Object? cardCvv = null,
    Object? cardDate = null,
  }) {
    return _then(_value.copyWith(
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as MyCardType,
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      cardHolder: null == cardHolder
          ? _value.cardHolder
          : cardHolder // ignore: cast_nullable_to_non_nullable
              as String,
      cardCvv: null == cardCvv
          ? _value.cardCvv
          : cardCvv // ignore: cast_nullable_to_non_nullable
              as String,
      cardDate: null == cardDate
          ? _value.cardDate
          : cardDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreditEntityCopyWith<$Res>
    implements $CreditEntityCopyWith<$Res> {
  factory _$$_CreditEntityCopyWith(
          _$_CreditEntity value, $Res Function(_$_CreditEntity) then) =
      __$$_CreditEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MyCardType cardType,
      String cardNumber,
      String cardHolder,
      String cardCvv,
      String cardDate});
}

/// @nodoc
class __$$_CreditEntityCopyWithImpl<$Res>
    extends _$CreditEntityCopyWithImpl<$Res, _$_CreditEntity>
    implements _$$_CreditEntityCopyWith<$Res> {
  __$$_CreditEntityCopyWithImpl(
      _$_CreditEntity _value, $Res Function(_$_CreditEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardType = null,
    Object? cardNumber = null,
    Object? cardHolder = null,
    Object? cardCvv = null,
    Object? cardDate = null,
  }) {
    return _then(_$_CreditEntity(
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as MyCardType,
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      cardHolder: null == cardHolder
          ? _value.cardHolder
          : cardHolder // ignore: cast_nullable_to_non_nullable
              as String,
      cardCvv: null == cardCvv
          ? _value.cardCvv
          : cardCvv // ignore: cast_nullable_to_non_nullable
              as String,
      cardDate: null == cardDate
          ? _value.cardDate
          : cardDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreditEntity implements _CreditEntity {
  const _$_CreditEntity(
      {this.cardType = MyCardType.invalid,
      this.cardNumber = '',
      this.cardHolder = '',
      this.cardCvv = '',
      this.cardDate = ''});

  /// The credit card type
  @override
  @JsonKey()
  final MyCardType cardType;

  /// The credit card number
  @override
  @JsonKey()
  final String cardNumber;

  /// The credit card holder
  @override
  @JsonKey()
  final String cardHolder;

  /// The credit card cvv
  @override
  @JsonKey()
  final String cardCvv;

  /// The credit card expiry date
  @override
  @JsonKey()
  final String cardDate;

  @override
  String toString() {
    return 'CreditEntity(cardType: $cardType, cardNumber: $cardNumber, cardHolder: $cardHolder, cardCvv: $cardCvv, cardDate: $cardDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreditEntity &&
            (identical(other.cardType, cardType) ||
                other.cardType == cardType) &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.cardHolder, cardHolder) ||
                other.cardHolder == cardHolder) &&
            (identical(other.cardCvv, cardCvv) || other.cardCvv == cardCvv) &&
            (identical(other.cardDate, cardDate) ||
                other.cardDate == cardDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, cardType, cardNumber, cardHolder, cardCvv, cardDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreditEntityCopyWith<_$_CreditEntity> get copyWith =>
      __$$_CreditEntityCopyWithImpl<_$_CreditEntity>(this, _$identity);
}

abstract class _CreditEntity implements CreditEntity {
  const factory _CreditEntity(
      {final MyCardType cardType,
      final String cardNumber,
      final String cardHolder,
      final String cardCvv,
      final String cardDate}) = _$_CreditEntity;

  @override

  /// The credit card type
  MyCardType get cardType;
  @override

  /// The credit card number
  String get cardNumber;
  @override

  /// The credit card holder
  String get cardHolder;
  @override

  /// The credit card cvv
  String get cardCvv;
  @override

  /// The credit card expiry date
  String get cardDate;
  @override
  @JsonKey(ignore: true)
  _$$_CreditEntityCopyWith<_$_CreditEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
