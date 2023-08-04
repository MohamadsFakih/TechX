import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:techx/core/data/model/enums.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';
import 'package:techx/features/categories/presentation/widget/mini_item.dart';
import 'package:techx/features/categories/presentation/widget/search_bar.dart';

class MiniItemView extends StatefulWidget {
  const MiniItemView({
    Key? key,
    required this.itemList,
    required this.itemType,
    required this.isLoading,
    required this.userId,
  }) : super(key: key);

  final List<MiniItemEntity> itemList;
  final MiniSubCategoryType itemType;
  final bool isLoading;
  final String userId;

  @override
  State<MiniItemView> createState() => _MiniItemViewState();
}

class _MiniItemViewState extends State<MiniItemView> {
  final TextEditingController _controller = TextEditingController();
  ValueNotifier<List<MiniItemEntity>> _filteredItemList = ValueNotifier([]);

  @override
  void initState() {
    super.initState();
    _filteredItemList.value = widget.itemList;
  }

  @override
  Widget build(BuildContext context) {
    return _buildPadding();
  }

  Widget _buildPadding() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          HomeSearchBar(
            searchController: _controller,
            onTextChanged: _onTextChanged,
          ),
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
                padding: const EdgeInsets.all(
                  8,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Text(
                      "Sort By",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_drop_down,
                    ),
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
                ? const Center(
                    child: SpinKitFadingCircle(
                      color: Colors.black,
                      size: 50.0,
                    ),
                  )
                : widget.itemList.isEmpty
                    ? const Center(
                        child: Text("No Items Found!"),
                      )
                    : Builder(builder: (context) {
                        _filteredItemList.value = widget.itemList;

                        return ValueListenableBuilder(
                          valueListenable: _filteredItemList,
                          builder: (context, value, _) {
                            return GridView.builder(
                              itemCount: _filteredItemList.value.length,
                              gridDelegate:
                                  const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 200,
                                childAspectRatio: 0.6,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20,
                              ),
                              itemBuilder: (context, pos) {
                                final MiniItemEntity itemEntity =
                                    _filteredItemList.value[pos];
                                final bool isLiked =
                                    itemEntity.likes.contains(widget.userId);
                                return MiniItem(
                                  itemEntity: itemEntity,
                                  type: widget.itemType.name,
                                  liked: isLiked,
                                  id: widget.userId,
                                );
                              },
                            ).animate().scale();
                          },
                        );
                      }),
          ),
        ],
      ),
    );
  }

  void _onTextChanged(String value) {
    _filteredItemList.value = widget.itemList.where((
      item,
    ) {
      final itemNameWithoutSpaces = item.name.replaceAll(' ', '').toLowerCase();
      final queryWithoutSpaces = value.replaceAll(' ', '').toLowerCase();
      return itemNameWithoutSpaces.contains(
        queryWithoutSpaces,
      );
    }).toList();
  }
}
