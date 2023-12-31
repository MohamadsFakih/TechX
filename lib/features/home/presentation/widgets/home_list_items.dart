import 'package:flutter/material.dart';
import 'package:techx/core/utils/mds.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';
import 'package:techx/features/home/presentation/widgets/featured_item.dart';

class HomeListItems extends StatelessWidget {
  const HomeListItems(
      {super.key,
      required this.label,
      required this.items,
      required this.userId});

  final List<MiniItemEntity> items;
  final String label;
  final String userId;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: const TextStyle(
                  color: blackColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "See All",
                style: TextStyle(
                  color: blackColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return FeaturedItem(
                  itemEntity: items[index],
                  fromScreen: "home",
                  id: userId,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
