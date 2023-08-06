import 'package:flutter/material.dart';
import 'package:techx/core/utils/mds.dart';
import 'package:techx/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:techx/features/cart/presentation/widgets/cart_bottom_sheet.dart';
import 'package:techx/features/common/domain/entity/credit_entity.dart';

class CheckOutButton extends StatelessWidget {
  const CheckOutButton({
    super.key,
    required this.total,
    required this.cards,
    required this.cartBloc,
    required this.userId,
  });

  final int total;
  final List<CreditEntity> cards;
  final CartBloc cartBloc;
  final String userId;

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
                if (cartBloc.state.items.isNotEmpty) {
                  _showCreditCardSelectionSheet(context);
                }
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
          onCardSelected: (selectedCard) {
            if (selectedCard != null) {
              cartBloc.add(
                ClearCart(userId),
              );
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Purchase successful"),
                ),
              );
            }
          },
          creditCards: cards,
        );
      },
    );
  }
}
