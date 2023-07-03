import 'package:flutter/material.dart';
import 'package:techx/core/utils/mds.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';

class DetailedBody extends StatefulWidget {
  const DetailedBody({super.key, required this.itemEntity});

  final MiniItemEntity itemEntity;

  @override
  State<DetailedBody> createState() => _DetailedBodyState();
}

class _DetailedBodyState extends State<DetailedBody> {
  final ValueNotifier<int> _currentModelIndex = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
        ),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
              color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "By Apple",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    "\$${widget.itemEntity.price}",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Model :",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(
                height: 4,
              ),
              ValueListenableBuilder(
                valueListenable: _currentModelIndex,
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
                              widget.itemEntity.models[pos], pos);
                        },
                      ));
                },
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Color :",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(
                height: 4,
              ),
              SizedBox(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildColorItem("0xFFB83925"),
                    _buildColorItem("0xFFAB2341"),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Description :",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                widget.itemEntity.description,
                style: const TextStyle(fontSize: 14),
              ),
              Text(
                widget.itemEntity.description,
                style: const TextStyle(fontSize: 14),
              ),
              Text(
                widget.itemEntity.description,
                style: const TextStyle(fontSize: 14),
              ),
              Text(
                widget.itemEntity.description,
                style: const TextStyle(fontSize: 14),
              ),
              Text(
                widget.itemEntity.description,
                style: const TextStyle(fontSize: 14),
              ),
              Text(
                widget.itemEntity.description,
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildModel(String name, int index) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () {
          _currentModelIndex.value = index;
        },
        borderRadius: BorderRadius.circular(16),
        child: Container(
          width: 80,
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: index == _currentModelIndex.value
                ? Colors.black
                : miniItemImageColor,
          ),
          child: Center(
            child: Text(
              name,
              style: TextStyle(
                  color: index == _currentModelIndex.value
                      ? Colors.white
                      : Colors.black),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildColorItem(String s) {
    int v = int.parse(s);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(v),
        ),
      ),
    );
  }
}
