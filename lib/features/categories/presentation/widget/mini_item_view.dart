import 'package:flutter/material.dart';
import 'package:techx/core/data/model/enums.dart';

class MiniItemView extends StatefulWidget {
  const MiniItemView({super.key, required this.itemType});

  final MiniSubCategoryType itemType;

  @override
  State<MiniItemView> createState() => _MiniItemViewState();
}

class _MiniItemViewState extends State<MiniItemView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(widget.itemType.toString()),
    );
  }
}
