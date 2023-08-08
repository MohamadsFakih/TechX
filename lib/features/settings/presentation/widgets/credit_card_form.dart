import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:techx/core/utils/card_type.dart';
import 'package:techx/core/utils/card_utilis.dart';
import 'package:techx/core/utils/input_formatters.dart';

import 'credit_card_field.dart';

class CreditCardForm extends StatelessWidget {
  const CreditCardForm(
      {super.key,
      required this.cardNumberController,
      required this.cardCvvController,
      required this.cardDateController,
      required this.cardHolderController,
      required this.cardType,
      required this.getCardTypeFromNumber});

  final TextEditingController cardNumberController;
  final TextEditingController cardCvvController;
  final TextEditingController cardDateController;
  final TextEditingController cardHolderController;
  final MyCardType cardType;
  final void Function() getCardTypeFromNumber;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CreditCardField(
            textFormField: TextFormField(
              textInputAction: TextInputAction.next,
              onChanged: (val) {
                getCardTypeFromNumber();
              },
              decoration: InputDecoration(
                hintText: "Card number",
                border: InputBorder.none,
                hintStyle: const TextStyle(
                  height: 2,
                ),
                prefixIcon: const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 8.0,
                  ),
                  child: Icon(Icons.credit_card),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(
                    8.0,
                  ),
                  child: CardUtils.getCardIcon(
                    cardType,
                  ),
                ),
              ),
              controller: cardNumberController,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(
                  19,
                ),
                CardNumberFormatter(),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
              ),
              child: CreditCardField(
                textFormField: TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: cardHolderController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      height: 2,
                    ),
                    hintText: "Full Name",
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(
                        8.0,
                      ),
                      child: Icon(
                        Icons.person,
                      ),
                    ),
                  ),
                ),
              )),
          Row(
            children: [
              Expanded(
                child: CreditCardField(
                  textFormField: TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: cardCvvController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        height: 2,
                      ),
                      hintText: "CVV",
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(
                          8.0,
                        ),
                        child: Icon(
                          Icons.add_card_sharp,
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(
                        3,
                      ),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: CreditCardField(
                  textFormField: TextFormField(
                    controller: cardDateController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        height: 2,
                      ),
                      hintText: "MM/YY",
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(
                          8.0,
                        ),
                        child: Icon(Icons.calendar_month),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(
                        5,
                      ),
                      FilteringTextInputFormatter.digitsOnly,
                      CardMonthInputFormatter(),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
