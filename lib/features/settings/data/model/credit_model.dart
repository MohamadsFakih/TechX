import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:techx/core/components/card_type.dart';

part 'credit_model.freezed.dart';
part 'credit_model.g.dart';

@freezed
class CreditCardModel with _$CreditCardModel {
  const factory CreditCardModel({
    @Default(MyCardType.invalid) MyCardType cardType,
    @Default('') String cardNumber,
    @Default('') String cardHolder,
    @Default('') String cardCvv,
    @Default('') String cardDate,
  }) = _CreditCardModel;

  factory CreditCardModel.fromJson(Map<String, dynamic> json) =>
      _$CreditCardModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'cardType': cardType,
        'cardNumber': cardNumber,
        'cardHolder': cardHolder,
        'cardCvv': cardCvv,
        'cardDate': cardDate,
      };
}
