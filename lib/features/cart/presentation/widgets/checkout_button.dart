import 'package:flutter/material.dart';
import 'package:techx/core/utils/mds.dart';
import 'package:techx/features/cart/presentation/widgets/cart_bottom_sheet.dart';
import 'package:techx/features/common/data/model/credit_card_model.dart';

class CheckOutButton extends StatelessWidget {
  const CheckOutButton({super.key, required this.total});

  final int total;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: redTypeColor.withOpacity(.8),
      ),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                _showCreditCardSelectionSheet(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.add_shopping_cart_outlined,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      "Checkout \$$total",
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showCreditCardSelectionSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: cardColor,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return CreditCardSelectionSheet(
          total: total.toString(),
          creditCards: [
            CreditCard(
              cardType: "Visa",
              number: "**** **** **** 1234",
              imageAsset: "assets/images/visa.png",
            ),
            CreditCard(
              cardType: "Mastercard",
              number: "**** **** **** 5678",
              imageAsset: "assets/images/mastercard.png",
            ),
            CreditCard(
              cardType: "Mastercard",
              number: "Add new payment method",
              imageAsset: "assets/images/mastercard.png",
            ),
          ],
          onCardSelected: (selectedCard) {
            if (selectedCard != null) {
              print("Selected Card Type: ${selectedCard.cardType}");
              print("Selected Card Number: ${selectedCard.number}");
            }
          },
        );
      },
    );
  }
}
