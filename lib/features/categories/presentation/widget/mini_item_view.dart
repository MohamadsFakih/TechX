import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:techx/core/data/model/enums.dart';
import 'package:techx/core/utils/mds.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';
import 'package:techx/features/categories/presentation/widget/mini_item.dart';
import 'package:techx/features/categories/presentation/widget/search_bar.dart';
import 'package:techx/features/categories/presentation/widget/sorting_bottom_sheet.dart';

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
  /// The search bar controller
  final TextEditingController _controller = TextEditingController();

  /// The original list of items but with applied filters
  ValueNotifier<List<MiniItemEntity>> _filteredItemList = ValueNotifier([]);

  /// The sorting options available
  final List<String> sortingOptions = [
    'Name (A-Z)',
    'Name (Z-A)',
    'Price (Low to High)',
    'Price (High to Low)'
  ];

  /// The chosen sorting option
  String sortingCriteria = 'Name (A-Z)';

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
      padding: const EdgeInsets.all(
        8.0,
      ),
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
                widget.itemType.name.toUpperCase(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              InkWell(
                onTap: () {
                  _showCreditCardSelectionSheet(context);
                },
                child: Container(
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
                                childAspectRatio: 0.59,
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
                                  fromScreen: "categories",
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

  /// To query the items depending on the search input
  void _onTextChanged(String value) {
    _filteredItemList.value = widget.itemList.where(
      (
        item,
      ) {
        final itemNameWithoutSpaces =
            item.name.replaceAll(' ', '').toLowerCase();
        final queryWithoutSpaces = value.replaceAll(' ', '').toLowerCase();
        return itemNameWithoutSpaces.contains(
          queryWithoutSpaces,
        );
      },
    ).toList();
    _sortItems();
  }

  /// Sort the list depending on the chosen sorting method
  void _sortItems() {
    List<MiniItemEntity> sortedList = List.from(
      _filteredItemList.value,
    );

    switch (sortingCriteria) {
      case 'Name (A-Z)':
        sortedList.sort(
          (a, b) => a.name.compareTo(
            b.name,
          ),
        );
        break;
      case 'Name (Z-A)':
        sortedList.sort(
          (a, b) => b.name.compareTo(
            a.name,
          ),
        );
        break;
      case 'Price (Low to High)':
        sortedList.sort(
          (a, b) => int.parse(a.price).compareTo(
            int.parse(
              b.price,
            ),
          ),
        );
        break;
      case 'Price (High to Low)':
        sortedList.sort(
          (a, b) => int.parse(b.price).compareTo(
            int.parse(
              a.price,
            ),
          ),
        );
        break;
      default:
        break;
    }
    _filteredItemList.value = sortedList;
  }

  /// Show the bottom filter sheet
  void _showCreditCardSelectionSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: cardColor,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return SortingBottomSheet(
          selectedValue: sortingCriteria,
          sortingOptions: sortingOptions,
          onOptionSelected: (option) {
            sortingCriteria = option!;
            _sortItems();
          },
        );
      },
    );
  }
}
