import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:techx/features/cart/data/model/cart_model.dart';
import 'package:techx/features/cart/presentation/bloc/cart_bloc.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.quantity,
    required this.item,
    required this.cartBloc,
    required this.userId,
  });

  final CartModel item;
  final int quantity;
  final CartBloc cartBloc;
  final String userId;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(
          8.0,
        ),
        child: Slidable(
          key: const ValueKey(
            0,
          ),
          startActionPane: ActionPane(
            motion: const ScrollMotion(),
            children: [
              SlidableAction(
                onPressed: (context) {
                  cartBloc.add(
                    RemoveCartItem(
                      userId,
                      item.id,
                    ),
                  );
                },
                backgroundColor: const Color(
                  0xFFFE4A49,
                ),
                foregroundColor: Colors.white,
                icon: Icons.delete,
                label: 'Remove',
              ),
            ],
          ),
          child: Row(
            children: [
              CachedNetworkImage(
                imageUrl: item.image,
                width: 100,
                height: 100,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "\$${item.price}",
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "x$quantity",
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
