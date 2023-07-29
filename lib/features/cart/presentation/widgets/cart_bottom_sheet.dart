import 'package:flutter/material.dart';
import 'package:techx/features/common/data/model/credit_card_model.dart';

class CreditCardSelectionSheet extends StatefulWidget {
  const CreditCardSelectionSheet({
    Key? key,
    required this.creditCards,
    required this.onCardSelected,
    required this.total,
  }) : super(key: key);

  final List<CreditCard> creditCards;
  final Function(CreditCard?) onCardSelected;
  final String total;

  @override
  State<CreditCardSelectionSheet> createState() =>
      _CreditCardSelectionSheetState();
}

class _CreditCardSelectionSheetState extends State<CreditCardSelectionSheet> {
  CreditCard? selectedCard;

  @override
  void initState() {
    super.initState();
    selectedCard =
        widget.creditCards.isNotEmpty ? widget.creditCards.first : null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Align(
            alignment: Alignment.center,
            child: Text(
              "Choose a payment method",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            "Total: \$${widget.total}",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          for (var card in widget.creditCards)
            RadioListTile<CreditCard?>(
              value: card,
              groupValue: selectedCard,
              onChanged: (value) {
                setState(() {
                  selectedCard = value;
                });
              },
              title: Row(
                children: [
                  Image.asset(
                    card.imageAsset,
                    width: 32,
                    height: 32,
                  ),
                  const SizedBox(width: 8),
                  Text(card.number),
                ],
              ),
            ),
          ElevatedButton(
            onPressed: () {
              widget.onCardSelected(selectedCard);
              Navigator.of(context).pop();
            },
            child: const Text("Proceed to Checkout"),
          ),
        ],
      ),
    );
  }
}
