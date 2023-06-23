import 'package:flutter/material.dart';
import 'package:techx/features/home/data/model/item_model.dart';
import 'package:techx/features/home/presentation/bloc/home_bloc.dart';
import 'package:techx/features/home/presentation/widgets/featured_item.dart';

class ListFeatured extends StatefulWidget {
  const ListFeatured({super.key, required this.state});

  final HomeState state;

  @override
  State<ListFeatured> createState() => _ListFeaturedState();
}

class _ListFeaturedState extends State<ListFeatured> {
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
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Featured",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
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
