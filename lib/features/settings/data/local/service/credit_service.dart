import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:techx/features/common/data/model/credit_model.dart';

@injectable
class CreditService {
  Future<List<CreditCardModel>> getCreditCard() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final cardsJson = prefs.getStringList('creditCards');
    if (cardsJson == null) {
      return [];
    }

    List<CreditCardModel> creditCards = cardsJson
        .map((itemJson) => CreditCardModel.fromJson(json.decode(itemJson)))
        .toList();

    return creditCards;
  }

  Future<void> addCreditCard(CreditCardModel creditCard) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<CreditCardModel> existingCards = await getCreditCard();

    existingCards.add(creditCard);

    List<String> cardsJson =
        existingCards.map((card) => json.encode(card.toJson())).toList();

    await prefs.setStringList('creditCards', cardsJson);
  }

  Future<void> deleteCreditCard(String cardNumber) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<CreditCardModel> existingCards = await getCreditCard();

    existingCards.removeWhere((card) {
      String existingCardFirstFourChars =
          card.cardNumber.substring(0, 4).replaceAll(RegExp(r'\s+\b|\b\s'), '');
      String existingCardLastTwoChars =
          card.cardNumber.substring(card.cardNumber.length - 2);
      String cardToDeleteFirstFourChars =
          cardNumber.substring(0, 4).replaceAll(RegExp(r'\s+\b|\b\s'), '');
      String cardToDeleteLastTwoChars =
          cardNumber.substring(cardNumber.length - 2);

      return (existingCardFirstFourChars == cardToDeleteFirstFourChars) &&
          (existingCardLastTwoChars == cardToDeleteLastTwoChars);
    });

    List<String> cardsJson =
        existingCards.map((card) => json.encode(card.toJson())).toList();

    await prefs.setStringList('creditCards', cardsJson);
  }
}
