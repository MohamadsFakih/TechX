import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:techx/features/home/data/model/item_model.dart';
import 'package:techx/features/home/presentation/widgets/home_banner.dart';

class ListBanners extends StatelessWidget {
  const ListBanners(
      {super.key, required this.pageController, required this.items});

  final PageController pageController;
  final List<BannerItem> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1.7,
          child: PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: pageController,
              itemCount: items.length,
              itemBuilder: (context, pos) {
                return HomeBanner(image: items[pos].image);
              }),
        ),
        const SizedBox(
          height: 8,
        ),
        SmoothPageIndicator(
          controller: pageController, // PageController
          count: items.length,
          effect: const WormEffect(), // your preferred effect
        ),
      ],
    );
  }
}
