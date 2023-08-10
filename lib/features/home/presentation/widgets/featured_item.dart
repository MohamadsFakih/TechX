import 'package:flutter/material.dart';
import 'package:techx/core/utils/mds.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({
    super.key,
    required this.itemEntity,
    required this.fromScreen,
  });

  final MiniItemEntity itemEntity;
  final String fromScreen;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 210,
      child: Card(
        elevation: 2,
        color: cardColor,
        child: InkWell(
          borderRadius: BorderRadius.circular(
            15,
          ),
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(
              8.0,
            ),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 126,
                  child: Image(
                    image: NetworkImage(
                      itemEntity.image,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    itemEntity.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${itemEntity.price}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: redTypeColor,
                        fontSize: 26,
                      ),
                    ),
                    const Icon(
                      Icons.shopping_cart,
                      color: redTypeColor,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
