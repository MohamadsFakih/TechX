import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techx/core/utils/mds.dart';
import 'package:techx/di/injection_container.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';
import 'package:techx/features/detailed/presentation/bloc/detailed_bloc.dart';
import 'package:techx/features/detailed/presentation/widget/detailed_body.dart';
import 'package:techx/features/detailed/presentation/widget/sliver_header.dart';

class DetailedScreen extends StatefulWidget {
  const DetailedScreen(
      {Key? key, required this.miniItemEntity, required this.id})
      : super(key: key);

  final MiniItemEntity miniItemEntity;
  final String id;

  @override
  State<DetailedScreen> createState() => _DetailedScreenState();
}

class _DetailedScreenState extends State<DetailedScreen> {
  final ScrollController _controller = ScrollController();
  final ValueNotifier<bool> _showHeaderNotifier = ValueNotifier<bool>(false);
  final PageController _pageController = PageController();
  final DetailedBloc _detailedBloc = getIt<DetailedBloc>();

  final ValueNotifier<int> _currentModelIndex = ValueNotifier(0);
  final ValueNotifier<int> _currentColorIndex = ValueNotifier(0);
  final ValueNotifier<int> _nbOfItems = ValueNotifier<int>(1);

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
    return BlocProvider.value(value: _detailedBloc, child: _buildScaffold());
  }

  Scaffold _buildScaffold() {
    return Scaffold(
      backgroundColor: miniItemImageColor,
      body: SafeArea(
        child: ValueListenableBuilder<bool>(
          valueListenable: _showHeaderNotifier,
          builder: (BuildContext context, bool showHeader, Widget? child) {
            return CustomScrollView(
              controller: _controller,
              slivers: <Widget>[
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
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      DetailedBody(
                        itemEntity: widget.miniItemEntity,
                        currentColorIndex: _currentColorIndex,
                        currentModelIndex: _currentModelIndex,
                        nbOfItems: _nbOfItems,
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
      bottomNavigationBar: Card(
        margin: const EdgeInsets.all(0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        elevation: 10,
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  _detailedBloc.add(
                    AddToCart(
                      widget.miniItemEntity,
                      widget.id,
                      _nbOfItems.value,
                      widget.miniItemEntity.models[_currentModelIndex.value],
                      widget.miniItemEntity.colors[_currentColorIndex.value],
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Item added to cart.'),
                    ),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.all(
                    24.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_shopping_cart_outlined,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Add to Cart",
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.all(
                    24.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.favorite_border,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Add to Favorites",
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
