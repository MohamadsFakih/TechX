import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:techx/core/utils/mds.dart';

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
    return Container(
      color: miniItemImageColor,
      child: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: pageController,
            itemCount: imageUrls.length,
            itemBuilder: (context, index) {
              return index == 0
                  ? Hero(
                      tag: imageUrls.first,
                      child: CachedNetworkImage(
                        fit: BoxFit.contain,
                        imageUrl: imageUrls[index],
                      ),
                    )
                  : CachedNetworkImage(
                      fit: BoxFit.contain,
                      imageUrl: imageUrls[index],
                    );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 16,
              ),
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
      ),
    );
  }
}
