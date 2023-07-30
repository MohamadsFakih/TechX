import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:techx/core/utils/mds.dart';

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({
    super.key,
    required this.cardType,
    required this.cardNumber,
    required this.cardHolder,
    required this.cardDate,
    required this.cardCVV,
    required this.cardImage,
    this.cardColor = mainColor,
  });

  final String cardType;
  final String cardNumber;
  final String cardHolder;
  final String cardDate;
  final String cardCVV;
  final Color cardColor;
  final Widget? cardImage;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cardType,
                  style: creditCardStyle,
                ),
                cardImage ?? Container(),
              ],
            ),
            Image.asset(
              "assets/images/creditCard/credit_card_seal.png",
              width: 60,
              height: 60,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  cardNumber,
                  style: creditCardStyle.copyWith(fontSize: 26),
                ),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "CARDHOLDER",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
                Text(
                  "VALID THRU",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cardHolder,
                  style: creditCardStyle,
                ),
                Text(
                  cardDate,
                  style: creditCardStyle,
                ),
              ],
            ),
          ],
        ),
      ),
    ).animate().fade();
  }
}
