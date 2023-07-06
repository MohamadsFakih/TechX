import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:techx/core/data/model/enums.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';
import 'package:techx/features/categories/presentation/widget/mini_item.dart';
import 'package:techx/features/categories/presentation/widget/search_bar.dart';

class MiniItemView extends StatefulWidget {
  const MiniItemView(
      {super.key,
      required this.itemList,
      required this.itemType,
      required this.isLoading});

  final List<MiniItemEntity> itemList;
  final MiniSubCategoryType itemType;
  final bool isLoading;

  @override
  State<MiniItemView> createState() => _MiniItemViewState();
}

class _MiniItemViewState extends State<MiniItemView> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          HomeSearchBar(searchController: _controller),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.itemType.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Row(
                  children: [
                    Text(
                      "Sort By",
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                    const Icon(Icons.arrow_drop_down),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Expanded(
            child: widget.isLoading
                ? const Center(child: CircularProgressIndicator())
                : widget.itemList.isEmpty
                    ? const Center(
                        child: Text("No Items Found!"),
                      )
                    : GridView.builder(
                        itemCount: widget.itemList.length,
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 200,
                                childAspectRatio: 0.6,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20),
                        itemBuilder: (context, pos) {
                          return MiniItem(
                            itemEntity: widget.itemList[pos],
                          );
                        },
                      ).animate().scale(),
          ),
        ],
      ),
    );
  }
}
