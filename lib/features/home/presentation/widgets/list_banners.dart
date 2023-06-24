import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:techx/features/home/presentation/widgets/home_banner.dart';

class ListBanners extends StatelessWidget {
  const ListBanners({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: pageController,
              itemCount: 2,
              itemBuilder: (context, pos) {
                return const HomeBanner(
                    label: " ", offer: "", image: "assets/images/banner.png");
              }),
        ),
        const SizedBox(
          height: 8,
        ),
        SmoothPageIndicator(
          controller: pageController, // PageController
          count: 2,
          effect: const WormEffect(), // your preferred effect
        ),
      ],
    );
  }
}
