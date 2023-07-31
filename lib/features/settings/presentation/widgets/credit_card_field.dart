import 'package:flutter/material.dart';

class CreditCardField extends StatelessWidget {
  const CreditCardField({super.key, required this.textFormField});

  final TextFormField textFormField;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 7,
          )
        ],
      ),
      child: textFormField,
    );
  }
}
