import 'package:flutter/material.dart';
import 'package:techx/features/home/data/model/item_model.dart';
import 'package:techx/features/home/presentation/bloc/home_bloc.dart';
import 'package:techx/features/home/presentation/widgets/featured_item.dart';

class HomeListItems extends StatefulWidget {
  const HomeListItems({super.key, required this.state, required this.label});

  final HomeState state;
  final String label;

  @override
  State<HomeListItems> createState() => _HomeListItemsState();
}

class _HomeListItemsState extends State<HomeListItems> {
  List<ItemModel> items = [];
  @override
  void initState() {
    super.initState();
    items = widget.state.featured;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.label,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "See All",
                style: TextStyle(
                  color: Colors.black,
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
                      image: items[index].image,
                      name: items[index].name,
                      price: items[index].price);
                }),
          ),
        ],
      ),
    );
  }
}
