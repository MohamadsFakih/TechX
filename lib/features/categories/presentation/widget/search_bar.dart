import 'package:flutter/material.dart';
import 'package:techx/core/utils/mds.dart';

class HomeSearchBar extends StatefulWidget {
  const HomeSearchBar(
      {super.key, required this.searchController, this.onTextChanged});

  final TextEditingController searchController;
  final void Function(String)? onTextChanged;

  @override
  State<HomeSearchBar> createState() => _HomeSearchBarState();
}

class _HomeSearchBarState extends State<HomeSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        4,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          14,
        ),
        color: whiteColor,
      ),
      child: TextField(
        onChanged: widget.onTextChanged,
        controller: widget.searchController,
        textInputAction: TextInputAction.done,
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: "Search Items",
          prefixIcon: Icon(
            Icons.search,
            color: blackColor,
          ),
          suffixIcon: Icon(
            Icons.filter_alt,
            color: blackColor,
          ),
        ),
      ),
    );
  }
}
