import 'package:flutter/material.dart';
import 'package:techx/core/utils/global_colors.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem(
      {super.key,
      required this.image,
      required this.name,
      required this.price});

  final String image;
  final String name;
  final String price;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 210,
      child: Stack(
        children: [
          Card(
            elevation: 2,
            color: GlobalColors.cardColor,
            child: InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 126,
                      child: Image(
                        image: NetworkImage(
                          image,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$$price",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: GlobalColors.priceColor,
                              fontSize: 26),
                        ),
                        Icon(
                          Icons.shopping_cart,
                          color: GlobalColors.priceColor,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.favorite_border,
                color: GlobalColors.priceColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
