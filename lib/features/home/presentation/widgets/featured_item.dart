import 'package:flutter/material.dart';
import 'package:techx/core/utils/mds.dart';

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
            color: cardColor,
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
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: priceColor,
                              fontSize: 26),
                        ),
                        const Icon(
                          Icons.shopping_cart,
                          color: priceColor,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.favorite_border,
                color: priceColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
