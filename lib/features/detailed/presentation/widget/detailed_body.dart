import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:techx/core/utils/mds.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';

class DetailedBody extends StatefulWidget {
  const DetailedBody({
    super.key,
    required this.itemEntity,
    required this.currentModelIndex,
    required this.currentColorIndex,
    required this.nbOfItems,
  });

  final MiniItemEntity itemEntity;
  final ValueNotifier<int> currentModelIndex;
  final ValueNotifier<int> currentColorIndex;
  final ValueNotifier<int> nbOfItems;

  @override
  State<DetailedBody> createState() => _DetailedBodyState();
}

class _DetailedBodyState extends State<DetailedBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
        ),
        child: Container(
          padding: const EdgeInsets.all(
            16,
          ),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(
                20,
              ),
              topLeft: Radius.circular(
                20,
              ),
            ),
            color: whiteColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 50,
                  child: Divider(
                    color: blackColor,
                    thickness: 3,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                widget.itemEntity.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                maxLines: 2,
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Text(
                    "\$${widget.itemEntity.price}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      if (widget.nbOfItems.value > 1) {
                        widget.nbOfItems.value -= 1;
                      }
                    },
                    child: const Card(
                      margin: EdgeInsets.all(
                        16,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(
                          8,
                        ),
                        child: Text(
                          "-",
                        ),
                      ),
                    ),
                  ),
                  ValueListenableBuilder(
                    valueListenable: widget.nbOfItems,
                    builder: (context, child, e) {
                      return Text(
                        widget.nbOfItems.value.toString(),
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    },
                  ),
                  InkWell(
                    onTap: () {
                      if (widget.nbOfItems.value < 6) {
                        widget.nbOfItems.value += 1;
                      }
                    },
                    child: const Card(
                      margin: EdgeInsets.all(
                        16,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(
                          8,
                        ),
                        child: Text(
                          "+",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                widget.itemEntity.description,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              if (widget.itemEntity.models[0] != '')
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Model :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    ValueListenableBuilder(
                      valueListenable: widget.currentModelIndex,
                      builder: (context, value, e) {
                        return SizedBox(
                            height: 80,
                            child: ListView.builder(
                              itemCount: widget.itemEntity.models.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (
                                context,
                                pos,
                              ) {
                                return _buildModel(
                                  widget.itemEntity.models[pos],
                                  pos,
                                );
                              },
                            ));
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              if (widget.itemEntity.colors[0] != '')
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Color :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    ValueListenableBuilder(
                      valueListenable: widget.currentColorIndex,
                      builder: (context, value, e) {
                        return SizedBox(
                            height: 80,
                            child: ListView.builder(
                              itemCount: widget.itemEntity.colors.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (
                                context,
                                pos,
                              ) {
                                return _buildColorItem(
                                  widget.itemEntity.colors[pos],
                                  pos,
                                );
                              },
                            ));
                      },
                    ),
                  ],
                ),
              if (widget.itemEntity.specifications.entries.isNotEmpty) ...[
                const SizedBox(
                  height: 4,
                ),
                const Text(
                  "Specifications :",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
              const SizedBox(
                height: 8,
              ),
              Container(
                child: _buildTable(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Builds the specifications table
  Widget _buildTable() {
    return widget.itemEntity.specifications.entries.isEmpty
        ? Container()
        : Table(
            border: TableBorder.all(
              color: blackColor,
            ),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            columnWidths: const {
              0: FixedColumnWidth(
                120,
              ),
            },
            children: [
              for (var entry in widget.itemEntity.specifications.entries)
                TableRow(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                  ),
                  children: [
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          entry.key,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(
                          8.0,
                        ),
                        child: Text(
                          entry.value,
                        ),
                      ),
                    ),
                  ],
                ),
            ],
          );
  }

  /// Build the models list
  Widget _buildModel(String name, int index) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () {
          widget.currentModelIndex.value = index;
        },
        borderRadius: BorderRadius.circular(
          16,
        ),
        child: Container(
          width: 80,
          padding: const EdgeInsets.all(
            4,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              16,
            ),
            color: index == widget.currentModelIndex.value
                ? blackColor
                : miniItemImageColor,
          ),
          child: Center(
            child: Text(
              name,
              style: TextStyle(
                color: index == widget.currentModelIndex.value
                    ? whiteColor
                    : blackColor,
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Build the colors list
  Widget _buildColorItem(String s, int index) {
    int v = int.parse(s);
    return InkWell(
      onTap: () {
        widget.currentColorIndex.value = index;
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
        ),
        child: Container(
          padding: const EdgeInsets.all(
            16,
          ),
          decoration: BoxDecoration(
            border: widget.currentColorIndex.value == index
                ? Border.all(
                    width: 2,
                  )
                : Border.all(
                    width: 0,
                  ),
            shape: BoxShape.circle,
            color: Color(v),
          ),
        ).animate(autoPlay: true).shimmer(),
      ),
    );
  }
}
