// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreditCardModel _$CreditCardModelFromJson(Map<String, dynamic> json) {
  return _CreditCardModel.fromJson(json);
}

/// @nodoc
mixin _$CreditCardModel {
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreditCardModelCopyWith<CreditCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditCardModelCopyWith<$Res> {
  factory $CreditCardModelCopyWith(
          CreditCardModel value, $Res Function(CreditCardModel) then) =
      _$CreditCardModelCopyWithImpl<$Res, CreditCardModel>;
  @useResult
  $Res call(
      {MyCardType cardType,
      String cardNumber,
      String cardHolder,
      String cardCvv,
      String cardDate});
}

/// @nodoc
class _$CreditCardModelCopyWithImpl<$Res, $Val extends CreditCardModel>
    implements $CreditCardModelCopyWith<$Res> {
  _$CreditCardModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_CreditCardModelCopyWith<$Res>
    implements $CreditCardModelCopyWith<$Res> {
  factory _$$_CreditCardModelCopyWith(
          _$_CreditCardModel value, $Res Function(_$_CreditCardModel) then) =
      __$$_CreditCardModelCopyWithImpl<$Res>;
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
class __$$_CreditCardModelCopyWithImpl<$Res>
    extends _$CreditCardModelCopyWithImpl<$Res, _$_CreditCardModel>
    implements _$$_CreditCardModelCopyWith<$Res> {
  __$$_CreditCardModelCopyWithImpl(
      _$_CreditCardModel _value, $Res Function(_$_CreditCardModel) _then)
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
    return _then(_$_CreditCardModel(
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
@JsonSerializable()
class _$_CreditCardModel
    with DiagnosticableTreeMixin
    implements _CreditCardModel {
  const _$_CreditCardModel(
      {this.cardType = MyCardType.invalid,
      this.cardNumber = '',
      this.cardHolder = '',
      this.cardCvv = '',
      this.cardDate = ''});

  factory _$_CreditCardModel.fromJson(Map<String, dynamic> json) =>
      _$$_CreditCardModelFromJson(json);

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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreditCardModel(cardType: $cardType, cardNumber: $cardNumber, cardHolder: $cardHolder, cardCvv: $cardCvv, cardDate: $cardDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreditCardModel'))
      ..add(DiagnosticsProperty('cardType', cardType))
      ..add(DiagnosticsProperty('cardNumber', cardNumber))
      ..add(DiagnosticsProperty('cardHolder', cardHolder))
      ..add(DiagnosticsProperty('cardCvv', cardCvv))
      ..add(DiagnosticsProperty('cardDate', cardDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreditCardModel &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, cardType, cardNumber, cardHolder, cardCvv, cardDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreditCardModelCopyWith<_$_CreditCardModel> get copyWith =>
      __$$_CreditCardModelCopyWithImpl<_$_CreditCardModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreditCardModelToJson(
      this,
    );
  }
}

abstract class _CreditCardModel implements CreditCardModel {
  const factory _CreditCardModel(
      {final MyCardType cardType,
      final String cardNumber,
      final String cardHolder,
      final String cardCvv,
      final String cardDate}) = _$_CreditCardModel;

  factory _CreditCardModel.fromJson(Map<String, dynamic> json) =
      _$_CreditCardModel.fromJson;

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
  _$$_CreditCardModelCopyWith<_$_CreditCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}
