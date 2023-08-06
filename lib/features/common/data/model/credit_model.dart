import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:techx/core/utils/card_type.dart';

part 'credit_model.freezed.dart';
part 'credit_model.g.dart';

@freezed
class CreditCardModel with _$CreditCardModel {
  const factory CreditCardModel({
    /// The credit card type
    @Default(MyCardType.invalid) MyCardType cardType,

    /// The credit card number
    @Default('') String cardNumber,

    /// The credit card holder
    @Default('') String cardHolder,

    /// The credit card cvv
    @Default('') String cardCvv,

    /// The credit card expiry date
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
