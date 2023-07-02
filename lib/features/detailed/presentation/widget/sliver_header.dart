import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DetailedSliverHeader extends StatelessWidget {
  const DetailedSliverHeader({
    Key? key,
    required this.imageUrls,
    required this.pageController,
  }) : super(key: key);

  final List<String> imageUrls;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
          scrollDirection: Axis.horizontal,
          controller: pageController,
          itemCount: imageUrls.length,
          itemBuilder: (context, index) {
            return CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: imageUrls[index],
            );
          },
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: SmoothPageIndicator(
              controller: pageController,
              count: imageUrls.length,
              effect: const WormEffect(
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
