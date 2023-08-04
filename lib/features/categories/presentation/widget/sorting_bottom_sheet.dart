import 'package:flutter/material.dart';

class SortingBottomSheet extends StatefulWidget {
  const SortingBottomSheet({
    super.key,
    required this.sortingOptions,
    required this.onOptionSelected,
    required this.selectedValue,
  });

  final String selectedValue;
  final List<String> sortingOptions;
  final Function(String?) onOptionSelected;

  @override
  State<SortingBottomSheet> createState() => _SortingBottomSheetState();
}

class _SortingBottomSheetState extends State<SortingBottomSheet> {
  ValueNotifier<String> selectedCard = ValueNotifier('');

  @override
  void initState() {
    super.initState();
    selectedCard.value = widget.selectedValue.isNotEmpty
        ? widget.selectedValue
        : null ?? widget.sortingOptions.first;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedCard,
      builder: (context, value, _) {
        return Container(
          padding: const EdgeInsets.all(
            16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "Choose sorting method",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              for (var card in widget.sortingOptions)
                RadioListTile<String?>(
                  value: card,
                  groupValue: selectedCard.value,
                  onChanged: (value) {
                    selectedCard.value = value!;
                  },
                  title: Text(card),
                ),
              ElevatedButton(
                onPressed: () {
                  widget.onOptionSelected(
                    selectedCard.value,
                  );
                  Navigator.of(context).pop();
                },
                child: const Text(
                  "Filter",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
