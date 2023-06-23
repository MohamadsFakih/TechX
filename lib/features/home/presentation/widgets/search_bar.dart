import 'package:flutter/material.dart';
import 'package:techx/core/utils/global_colors.dart';

class HomeSearchBar extends StatefulWidget {
  const HomeSearchBar({super.key, required this.searchController});

  final TextEditingController searchController;

  @override
  State<HomeSearchBar> createState() => _HomeSearchBarState();
}

class _HomeSearchBarState extends State<HomeSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: GlobalColors.searchBarColor),
      child: TextField(
        controller: widget.searchController,
        textInputAction: TextInputAction.done,
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: "Search Items",
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          suffixIcon: Icon(
            Icons.filter_alt,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
