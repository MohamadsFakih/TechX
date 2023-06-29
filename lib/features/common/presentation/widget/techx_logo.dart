import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techx/core/utils/mds.dart';

class TechXLogo extends StatelessWidget {
  const TechXLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "TechX",
      style: GoogleFonts.pacifico(
        textStyle: const TextStyle(
            color: mainColor, fontWeight: FontWeight.bold, fontSize: 28),
      ),
    );
  }
}
