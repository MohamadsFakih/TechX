import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:techx/core/utils/card_type.dart';
import 'package:techx/features/common/data/model/credit_model.dart';

part 'credit_entity.freezed.dart';

@freezed
class CreditEntity with _$CreditEntity {
  const factory CreditEntity({
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
  }) = _CreditEntity;

  factory CreditEntity.fromModel(CreditCardModel model) => CreditEntity(
        cardType: model.cardType,
        cardNumber: model.cardNumber,
        cardHolder: model.cardHolder,
        cardCvv: model.cardCvv,
        cardDate: model.cardDate,
      );
}
