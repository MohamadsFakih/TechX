import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:techx/di/injection_container.dart';
import 'package:techx/features/cart/data/model/cart_model.dart';
import 'package:techx/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:techx/features/cart/presentation/widgets/cart_item.dart';
import 'package:techx/features/cart/presentation/widgets/checkout_button.dart';
import 'package:techx/features/common/presentation/widget/custom_app_bar.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key, required this.userId});

  final String userId;

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  /// The instance of [CartBloc]
  final CartBloc _cartBloc = getIt<CartBloc>();

  /// The total price of the items in the cart
  int total = 0;

  @override
  void initState() {
    super.initState();
    _cartBloc.add(
      GetCartItems(
        widget.userId,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cartBloc,
      child: _buildScaffold(),
    );
  }

  Scaffold _buildScaffold() {
    return Scaffold(
      appBar: CustomAppBar(
        text: "My Cart",
      ),
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          int totalPrice = 0;
          for (final CartModel item in state.items) {
            totalPrice += int.parse(item.price) * item.quantity;
          }
          total = totalPrice;
          return state.isLoading
              ? const Center(
                  child: SpinKitFadingCircle(
                    color: Colors.black,
                    size: 50.0,
                  ),
                )
              : SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {
                              _cartBloc.add(
                                ClearCart(
                                  widget.userId,
                                ),
                              );
                            },
                            child: const Text(
                              "Clear all",
                              style: TextStyle(color: Colors.red, fontSize: 16),
                            ),
                          ),
                        ),
                        state.items.isEmpty
                            ? Expanded(
                                child: Center(
                                  child: Container(
                                    child: Text("Cart is empty"),
                                  ),
                                ),
                              )
                            : _buildList(
                                state.items,
                                state,
                              ),
                        CheckOutButton(
                          total: total,
                          cards: state.creditCards,
                          cartBloc: _cartBloc,
                          userId: widget.userId,
                        )
                      ],
                    ),
                  ),
                );
        },
      ),
    );
  }

  Widget _buildList(selectedList, state) {
    return Expanded(
      child: ListView.builder(
        itemCount: state.items.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, pos) {
          final CartModel item = state.items[pos];

          return CartItem(
            item: item,
            quantity: item.quantity,
            cartBloc: _cartBloc,
            userId: widget.userId,
          );
        },
      ).animate().scale(),
    );
  }
}
