import 'package:flutter/material.dart';
import 'package:techx/core/utils/mds.dart';

class TechXLogo extends StatelessWidget {
  const TechXLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "TechX",
      style: TextStyle(
          color: mainColor, fontWeight: FontWeight.bold, fontSize: 28),
    );
  }
}
