import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner(
      {super.key,
      required this.label,
      required this.offer,
      required this.image});

  final String label;
  final String offer;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
