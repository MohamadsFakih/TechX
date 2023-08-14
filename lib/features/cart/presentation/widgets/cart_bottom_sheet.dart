import 'package:flutter/material.dart';
import 'package:techx/core/utils/card_utilis.dart';
import 'package:techx/core/utils/mds.dart';
import 'package:techx/features/common/domain/entity/credit_entity.dart';

class CreditCardSelectionSheet extends StatefulWidget {
  const CreditCardSelectionSheet({
    Key? key,
    required this.creditCards,
    required this.onCardSelected,
    required this.total,
  }) : super(key: key);

  final List<CreditEntity> creditCards;
  final Function(CreditEntity?) onCardSelected;
  final String total;

  @override
  State<CreditCardSelectionSheet> createState() =>
      _CreditCardSelectionSheetState();
}

class _CreditCardSelectionSheetState extends State<CreditCardSelectionSheet> {
  /// The selected credit card from the list
  ValueNotifier<CreditEntity> selectedCard = ValueNotifier(CreditEntity());

  @override
  void initState() {
    super.initState();
    selectedCard.value = widget.creditCards.isNotEmpty
        ? widget.creditCards.first
        : null ?? CreditEntity();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedCard,
      builder: (context, value, _) {
        return Container(
          padding: const EdgeInsets.all(
            16,
          ),
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
                RadioListTile<CreditEntity?>(
                  value: card,
                  groupValue: selectedCard.value,
                  onChanged: (value) {
                    selectedCard.value = value!;
                  },
                  title: Row(
                    children: [
                      CardUtils.getCardIcon(
                            card.cardType,
                          ) ??
                          Container(),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        CardUtils.getFormattedCardNumber(
                          card.cardNumber,
                        ),
                      ),
                    ],
                  ),
                ),
              ElevatedButton(
                onPressed: () {
                  widget.onCardSelected(
                    selectedCard.value,
                  );
                  Navigator.of(context).pop();
                },
                child: const Text(
                  "Proceed to Checkout",
                  style: TextStyle(
                    color: whiteColor,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
