import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:techx/core/utils/mds.dart';
import 'package:techx/di/injection_container.dart';
import 'package:techx/features/common/presentation/widget/custom_app_bar.dart';
import 'package:techx/features/home/data/model/item_model.dart';
import 'package:techx/features/home/presentation/bloc/home_bloc.dart';
import 'package:techx/features/home/presentation/widgets/list_banners.dart';
import 'package:techx/features/home/presentation/widgets/list_brands.dart';
import 'package:techx/features/home/presentation/widgets/home_list_items.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  /// To keep the page alive
  @override
  bool get wantKeepAlive => true;

  /// The instance of [HomeBloc]
  final HomeBloc _bloc = getIt<HomeBloc>();

  /// The list of featured products
  List<ItemModel> featuredList = [];

  /// The controller for the banners
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    _bloc.add(
      const Fetch(),
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider.value(
      value: _bloc,
      child: Scaffold(
        appBar: CustomAppBar(
          text: "Home",
        ),
        body: _buildHome(),
      ),
    );
  }

  Widget _buildHome() {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return state.isLoading
            ? const Center(
                child: SpinKitFadingCircle(
                  color: Colors.black,
                  size: 50.0,
                ),
              )
            : Scaffold(
                backgroundColor: homeColor,
                body: RefreshIndicator(
                  onRefresh: _refresh,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView(
                      children: [
                        SizedBox(
                          height: 8,
                        ),
                        ListBanners(
                          pageController: _pageController,
                          items: state.banners,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const ListBrands(),
                        const SizedBox(
                          height: 16,
                        ),
                        HomeListItems(
                          items: state.featured,
                          label: "Featured",
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        HomeListItems(
                          items: state.newList,
                          label: "New",
                        ),
                      ],
                    ),
                  ),
                ),
              );
      },
    );
  }

  Future<void> _refresh() async {
    _bloc.add(
      const Fetch(),
    );
  }
}
