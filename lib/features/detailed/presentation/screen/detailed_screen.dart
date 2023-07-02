import 'package:flutter/material.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';
import 'package:techx/features/detailed/presentation/widget/detailed_body.dart';
import 'package:techx/features/detailed/presentation/widget/sliver_header.dart';

class DetailedScreen extends StatefulWidget {
  const DetailedScreen({Key? key, required this.miniItemEntity})
      : super(key: key);

  final MiniItemEntity miniItemEntity;

  @override
  State<DetailedScreen> createState() => _DetailedScreenState();
}

class _DetailedScreenState extends State<DetailedScreen> {
  final ScrollController _controller = ScrollController();
  final ValueNotifier<bool> _showHeaderNotifier = ValueNotifier<bool>(false);
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _controller.removeListener(_scrollListener);
    _controller.dispose();
    _showHeaderNotifier.dispose();
    super.dispose();
  }

  void _scrollListener() {
    final shouldShowHeader = _controller.position.pixels >= 250;
    if (_showHeaderNotifier.value != shouldShowHeader) {
      _showHeaderNotifier.value = shouldShowHeader;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder<bool>(
          valueListenable: _showHeaderNotifier,
          builder: (BuildContext context, bool showHeader, Widget? child) {
            return NestedScrollView(
              controller: _controller,
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) => [
                SliverAppBar(
                  pinned: true,
                  floating: false,
                  expandedHeight: 250,
                  flexibleSpace: FlexibleSpaceBar(
                    background: DetailedSliverHeader(
                      imageUrls: widget.miniItemEntity.imageLinks,
                      pageController: _pageController,
                    ),
                  ),
                ),
              ],
              body: ListView.builder(
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return DetailedBody(
                    itemEntity: widget.miniItemEntity,
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
