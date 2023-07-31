import 'package:flutter/material.dart';
import 'package:techx/core/utils/mds.dart';
import 'package:techx/features/settings/presentation/bloc/settings_bloc.dart';
import 'package:techx/features/settings/presentation/widgets/card_flipper.dart';
import 'dart:math' as math;

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({
    Key? key,
    required this.cardType,
    required this.cardNumber,
    required this.cardHolder,
    required this.cardDate,
    required this.cardCVV,
    required this.cardImage,
    required this.settingsBloc,
    this.isEditing = false,
    required this.creditCardColor,
  }) : super(key: key);

  final String cardType;
  final String cardNumber;
  final String cardHolder;
  final String cardDate;
  final String cardCVV;
  final Widget? cardImage;
  final SettingsBloc settingsBloc;
  final bool isEditing;
  final Color creditCardColor;

  @override
  Widget build(BuildContext context) {
    return CreditCardFlipper(
      frontWidget: Card(
        color: creditCardColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    cardType.toUpperCase(),
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
                    style: creditCardStyle.copyWith(fontSize: 28),
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
      ),
      backWidget: Transform(
        alignment: Alignment.center,
        transform:
            Matrix4.rotationY(math.pi), // Rotate by 180 degrees (pi radians)
        child: Card(
          color: creditCardColor,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 5,
                  child: Container(
                    color: Colors.black,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Authorized signature",
                        style: TextStyle(
                          color: greyColor,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "Not valid unless signed",
                        style: TextStyle(
                          color: greyColor,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: AspectRatio(
                    aspectRatio: 8,
                    child: Container(
                      color: Colors.white,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            cardCVV,
                            style:
                                creditCardStyle.copyWith(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                    style: TextStyle(
                      color: greyColor,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                if (!isEditing)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          settingsBloc.add(
                            DeleteCreditCard(
                              cardNumber,
                            ),
                          );
                        },
                        child: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
