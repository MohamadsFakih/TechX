import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techx/di/injection_container.dart';
import 'package:techx/features/cart/data/model/cart_model.dart';
import 'package:techx/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:techx/features/cart/presentation/widgets/cart_item.dart';
import 'package:techx/features/cart/presentation/widgets/checkout_button.dart';
import 'package:techx/features/common/presentation/widget/techx_logo.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key, required this.userId});

  final String userId;

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final CartBloc _cartBloc = getIt<CartBloc>();

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
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          return state.isLoading
              ? const Center(child: CircularProgressIndicator())
              : SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.center,
                          child: TechXLogo(
                            text: "My Cart",
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
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
                        _buildList(
                          state.items,
                          state,
                        ),
                        const CheckOutButton(),
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
