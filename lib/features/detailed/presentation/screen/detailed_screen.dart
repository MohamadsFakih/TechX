import 'package:flutter/material.dart';
import 'package:techx/features/detailed/presentation/widget/sliver_header.dart';

class DetailedScreen extends StatefulWidget {
  const DetailedScreen({super.key, required this.imageUrls});

  final List<String> imageUrls;

  @override
  State<DetailedScreen> createState() => _DetailedScreenState();
}

class _DetailedScreenState extends State<DetailedScreen> {
  final PageController _pageController = PageController();
  final ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            NestedScrollView(
              controller: _controller,
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                SliverPersistentHeader(
                  floating: true,
                  pinned: false,
                  delegate: DetailedSliverHeader(
                    imageUrls: widget.imageUrls,
                    pageController: _pageController,
                  ),
                ),
              ],
              body: const ListTile(
                title: Text('Ite'),
              ),
              // Replace with your actual item count
            ),
          ],
        ),
      ),
    );
  }
}
