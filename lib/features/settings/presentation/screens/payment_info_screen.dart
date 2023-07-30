import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:techx/core/components/card_type.dart';
import 'package:techx/core/components/card_utilis.dart';
import 'package:techx/di/injection_container.dart';
import 'package:techx/features/settings/domain/entity/credit_entity.dart';
import 'package:techx/features/settings/presentation/bloc/settings_bloc.dart';
import 'package:techx/features/settings/presentation/widgets/credit_card_form.dart';
import 'package:techx/features/settings/presentation/widgets/credit_card_widget.dart';

class PaymentInfoScreen extends StatefulWidget {
  const PaymentInfoScreen({super.key, required this.controller});

  final PageController controller;

  @override
  State<PaymentInfoScreen> createState() => _PaymentInfoScreenState();
}

class _PaymentInfoScreenState extends State<PaymentInfoScreen> {
  final SettingsBloc _settingsBloc = getIt<SettingsBloc>();

  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _cardHolderController = TextEditingController();
  final TextEditingController _cardCvvController = TextEditingController();
  final TextEditingController _cardDateController = TextEditingController();

  final PageController _pageController = PageController(initialPage: 0);

  final StreamController<void> _streamController =
      StreamController<void>.broadcast();

  Stream<void> get _cardStream => _streamController.stream;

  MyCardType cardType = MyCardType.invalid;

  List<CreditEntity> _list = [];

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

    _settingsBloc.add(
      const GetCreditCards(),
    );
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
    return BlocProvider.value(
      value: _settingsBloc,
      child: _buildScaffold(),
    );
  }

  Widget _buildScaffold() {
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
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          _list = List.from(_settingsBloc.state.creditCards);
          _list.add(
            const CreditEntity(
                cardHolder: '',
                cardNumber: '',
                cardCvv: '',
                cardType: MyCardType.invalid,
                cardDate: ''),
          );

          return state.isLoading
              ? const Center(child: CircularProgressIndicator())
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: [
                      AspectRatio(
                        aspectRatio: 1.5,
                        child: PageView.builder(
                            scrollDirection: Axis.horizontal,
                            controller: _pageController,
                            itemCount: _list.length,
                            itemBuilder: (context, pos) {
                              CreditEntity cardEntity = _list[pos];

                              if (pos == _list.length - 1) {
                                return StreamBuilder(
                                    stream: _cardStream,
                                    builder: (context, snapshot) {
                                      return CreditCardWidget(
                                        cardType: cardType.name.toUpperCase(),
                                        cardNumber: _cardNumberController.text,
                                        cardHolder: _cardHolderController.text,
                                        cardDate: _cardDateController.text,
                                        cardCVV: _cardCvvController.text,
                                        cardImage:
                                            CardUtils.getCardIcon(cardType),
                                        cardColor:
                                            CardUtils.getCardColor(cardType),
                                      );
                                    });
                              }
                              return CreditCardWidget(
                                cardType: cardEntity.cardType.name,
                                cardNumber: cardEntity.cardNumber,
                                cardHolder: cardEntity.cardHolder.toUpperCase(),
                                cardDate: cardEntity.cardDate,
                                cardCVV: cardEntity.cardCvv,
                                cardImage:
                                    CardUtils.getCardIcon(cardEntity.cardType),
                                cardColor:
                                    CardUtils.getCardColor(cardEntity.cardType),
                              );
                            }),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SmoothPageIndicator(
                          controller: _pageController, // PageController
                          count: _list.length,
                          effect: const WormEffect(
                            dotHeight: 10,
                            dotWidth: 10,
                          ), // your preferred effect
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      CreditCardForm(
                          cardNumberController: _cardNumberController,
                          cardCvvController: _cardCvvController,
                          cardDateController: _cardDateController,
                          cardHolderController: _cardHolderController,
                          cardType: cardType,
                          getCardTypeFromNumber: getCardTypeFromNumber),
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
                          onPressed: () {
                            String checkCardNum = CardUtils.validateCardNum(
                                    _cardNumberController.text) ??
                                '';
                            String checkCardCvv = CardUtils.validateCVV(
                                    _cardCvvController.text) ??
                                '';
                            String checkCardDate = CardUtils.validateDate(
                                    _cardDateController.text) ??
                                '';

                            bool cardExists = _settingsBloc.state.creditCards
                                .any((cardEntity) {
                              return cardEntity.cardNumber ==
                                  _cardNumberController.text;
                            });
                            if (cardExists) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Card already exits"),
                                ),
                              );
                            } else if (checkCardNum != '') {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(checkCardNum),
                                ),
                              );
                            } else if (checkCardCvv != '') {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(checkCardCvv),
                                ),
                              );
                            } else if (checkCardDate != '') {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(checkCardDate),
                                ),
                              );
                            } else {
                              _settingsBloc.add(
                                AddCreditCard(
                                  CreditEntity(
                                    cardHolder: _cardHolderController.text,
                                    cardNumber: _cardNumberController.text,
                                    cardType: cardType,
                                    cardCvv: _cardCvvController.text,
                                    cardDate: _cardDateController.text,
                                  ),
                                ),
                              );
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Card added successfully"),
                                ),
                              );
                              _cardNumberController.text = "";
                              _cardCvvController.text = "";
                              _cardDateController.text = "";
                              _cardHolderController.text = "";
                            }
                          },
                          child: const Text(
                            "Add card",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
        },
      ),
    );
  }
}
