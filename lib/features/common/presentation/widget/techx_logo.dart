import 'package:flutter/material.dart';
import 'package:techx/core/utils/mds.dart';

class TechXLogo extends StatelessWidget {
  const TechXLogo({
    super.key,
    this.text = "TechX",
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          color: mainColor, fontWeight: FontWeight.bold, fontSize: 28),
    );
  }
}
