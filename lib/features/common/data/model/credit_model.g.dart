// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreditCardModel _$$_CreditCardModelFromJson(Map<String, dynamic> json) =>
    _$_CreditCardModel(
      cardType: $enumDecodeNullable(_$MyCardTypeEnumMap, json['cardType']) ??
          MyCardType.invalid,
      cardNumber: json['cardNumber'] as String? ?? '',
      cardHolder: json['cardHolder'] as String? ?? '',
      cardCvv: json['cardCvv'] as String? ?? '',
      cardDate: json['cardDate'] as String? ?? '',
    );

Map<String, dynamic> _$$_CreditCardModelToJson(_$_CreditCardModel instance) =>
    <String, dynamic>{
      'cardType': _$MyCardTypeEnumMap[instance.cardType]!,
      'cardNumber': instance.cardNumber,
      'cardHolder': instance.cardHolder,
      'cardCvv': instance.cardCvv,
      'cardDate': instance.cardDate,
    };

const _$MyCardTypeEnumMap = {
  MyCardType.masterCard: 'masterCard',
  MyCardType.visa: 'visa',
  MyCardType.discover: 'discover',
  MyCardType.americanExpress: 'americanExpress',
  MyCardType.others: 'others',
  MyCardType.invalid: 'invalid',
};
