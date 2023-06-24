import 'package:flutter/material.dart';
import 'package:techx/features/home/presentation/widgets/home_brand_item.dart';

class ListBrands extends StatelessWidget {
  const ListBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Brands",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "See All",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        SizedBox(
          height: 80,
          width: double.infinity,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              HomeBrandItem(
                "assets/images/apple.png",
                () {},
              ),
              HomeBrandItem(
                "assets/images/samsung.png",
                () {},
              ),
              HomeBrandItem(
                "assets/images/huawei.png",
                () {},
              ),
              HomeBrandItem(
                "assets/images/jbl.png",
                () {},
              ),
              HomeBrandItem(
                "assets/images/alien.png",
                () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
