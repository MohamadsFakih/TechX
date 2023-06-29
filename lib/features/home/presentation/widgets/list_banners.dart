import 'dart:async';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:techx/features/home/data/model/item_model.dart';
import 'package:techx/features/home/presentation/widgets/home_banner.dart';

class ListBanners extends StatefulWidget {
  const ListBanners(
      {super.key, required this.pageController, required this.items});

  final PageController pageController;
  final List<BannerItem> items;

  @override
  State<ListBanners> createState() => _ListBannersState();
}

class _ListBannersState extends State<ListBanners> {
  late Timer _timer;
  int _currentPage = 0;

  @override
  void initState() {
    startTime();
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1.7,
          child: PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: widget.pageController,
              itemCount: widget.items.length,
              itemBuilder: (context, pos) {
                _currentPage = pos;
                _timer.cancel();
                startTime();
                return HomeBanner(image: widget.items[pos].image);
              }),
        ),
        const SizedBox(
          height: 8,
        ),
        SmoothPageIndicator(
          controller: widget.pageController, // PageController
          count: widget.items.length,
          effect: const WormEffect(
            dotHeight: 10,
            dotWidth: 10,
          ), // your preferred effect
        ),
      ],
    );
  }

  void startTime() {
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_currentPage < widget.items.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      widget.pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }
}
