import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:techx/core/components/card_type.dart';
import 'package:techx/features/settings/data/model/credit_model.dart';

part 'credit_entity.freezed.dart';

@freezed
class CreditEntity with _$CreditEntity {
  const factory CreditEntity({
    @Default(MyCardType.invalid) MyCardType cardType,
    @Default('') String cardNumber,
    @Default('') String cardHolder,
    @Default('') String cardCvv,
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
