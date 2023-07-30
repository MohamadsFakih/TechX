import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:techx/core/components/card_type.dart';
import 'package:techx/core/components/card_utilis.dart';
import 'package:techx/core/components/input_formatters.dart';
import 'package:techx/features/settings/presentation/widgets/credit_card_field.dart';
import 'package:techx/features/settings/presentation/widgets/credit_card_widget.dart';

class PaymentInfoScreen extends StatefulWidget {
  const PaymentInfoScreen({super.key, required this.controller});

  final PageController controller;

  @override
  State<PaymentInfoScreen> createState() => _PaymentInfoScreenState();
}

class _PaymentInfoScreenState extends State<PaymentInfoScreen> {
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _cardHolderController = TextEditingController();
  final TextEditingController _cardCvvController = TextEditingController();
  final TextEditingController _cardDateController = TextEditingController();

  final StreamController<void> _streamController = StreamController<void>();

  Stream<void> get _cardStream => _streamController.stream;

  MyCardType cardType = MyCardType.invalid;

  void getCardTypeFromNumber() {
    if (_cardNumberController.text.length <= 6) {
      String cardNum = CardUtils.getCleanedNumber(_cardNumberController.text);
      MyCardType type = CardUtils.getCardTypeFrmNumber(cardNum);
      if (type != cardType) {
        setState(() {
          cardType = type;
        });
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _cardNumberController.addListener(_updateCard);
    _cardHolderController.addListener(_updateCard);
    _cardCvvController.addListener(_updateCard);
    _cardDateController.addListener(_updateCard);
  }

  void _updateCard() {
    _streamController.add(null);
  }

  @override
  void dispose() {
    _streamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            widget.controller.animateToPage(
              0,
              duration: const Duration(
                milliseconds: 300,
              ),
              curve: Curves.ease,
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            AspectRatio(
              aspectRatio: 1.5,
              child: StreamBuilder(
                  stream: _cardStream,
                  builder: (context, snapshot) {
                    return CreditCardWidget(
                      cardType: cardType.name.toUpperCase(),
                      cardNumber: _cardNumberController.text,
                      cardHolder: _cardHolderController.text,
                      cardDate: _cardDateController.text,
                      cardCVV: _cardCvvController.text,
                      cardImage: CardUtils.getCardIcon(cardType),
                      cardColor: CardUtils.getCardColor(cardType),
                    );
                  }),
            ),
            const SizedBox(
              height: 32,
            ),
            Form(
              child: Column(
                children: [
                  CreditCardField(
                      textFormField: TextFormField(
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
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Icon(Icons.credit_card)),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CardUtils.getCardIcon(cardType),
                      ),
                    ),
                    controller: _cardNumberController,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(19),
                      CardNumberFormatter(),
                    ],
                  )),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: CreditCardField(
                        textFormField: TextFormField(
                          controller: _cardHolderController,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              height: 2,
                            ),
                            hintText: "Full Name",
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.person),
                            ),
                          ),
                        ),
                      )),
                  Row(
                    children: [
                      Expanded(
                        child: CreditCardField(
                          textFormField: TextFormField(
                            controller: _cardCvvController,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                height: 2,
                              ),
                              hintText: "CVV",
                              prefixIcon: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(Icons.add_card_sharp)),
                            ),
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(4),
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
                            controller: _cardDateController,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                height: 2,
                              ),
                              hintText: "MM/YY",
                              prefixIcon: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(Icons.calendar_month)),
                            ),
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(5),
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
            ),
            const SizedBox(
              height: 32,
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/images/creditCard/scan.svg",
              ),
              label: const Text("Scan Card"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Add card",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
