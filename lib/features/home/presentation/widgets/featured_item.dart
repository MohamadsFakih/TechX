import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:techx/core/utils/mds.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';
import 'package:techx/features/detailed/presentation/screen/detailed_screen.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({
    super.key,
    required this.itemEntity,
    required this.fromScreen,
    required this.id,
  });

  final MiniItemEntity itemEntity;
  final String fromScreen;
  final String id;

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
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    DetailedScreen(
                  miniItemEntity: itemEntity,
                  id: id,
                  fromScreen: fromScreen,
                ),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return FadeTransition(
                    opacity: animation,
                    child: child,
                  );
                },
                transitionDuration: const Duration(
                  milliseconds: 600,
                ),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(
              8.0,
            ),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 126,
                  child: Hero(
                    tag: itemEntity.image + fromScreen,
                    child: CachedNetworkImage(
                      imageUrl: itemEntity.image,
                      placeholder: (context, url) => const Image(
                        image: AssetImage(
                          "assets/images/placeholder.jpg",
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    itemEntity.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: blackColor,
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
