import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DetailedSliverHeader extends SliverPersistentHeaderDelegate {
  DetailedSliverHeader({
    required this.pageController,
    required this.imageUrls,
    this.currentIndex = 0,
  });

  final List<String> imageUrls;
  final PageController pageController;
  int currentIndex;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: pageController,
                  itemCount: imageUrls.length,
                  itemBuilder: (context, pos) {
                    currentIndex = pos;
                    return CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl: imageUrls[pos],
                    );
                  },
                ),
              ),
              const SizedBox(height: 8),
              SmoothPageIndicator(
                controller: pageController,
                count: imageUrls.length,
                effect: const WormEffect(
                  dotHeight: 10,
                  dotWidth: 10,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => 250;

  @override
  double get minExtent => 150;

  @override
  bool shouldRebuild(DetailedSliverHeader oldDelegate) {
    return currentIndex != oldDelegate.currentIndex;
  }
}
