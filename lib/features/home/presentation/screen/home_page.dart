import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techx/core/utils/mds.dart';
import 'package:techx/di/injection_container.dart';
import 'package:techx/features/home/data/model/item_model.dart';
import 'package:techx/features/home/presentation/bloc/home_bloc.dart';
import 'package:techx/features/home/presentation/widgets/list_banners.dart';
import 'package:techx/features/home/presentation/widgets/list_brands.dart';
import 'package:techx/features/home/presentation/widgets/home_list_items.dart';
import 'package:techx/features/home/presentation/widgets/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  final HomeBloc _bloc = getIt<HomeBloc>();
  List<ItemModel> featuredList = [];
  final TextEditingController _searchController = TextEditingController();
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
      child: SafeArea(
        child: Scaffold(
          body: _buildHome(),
        ),
      ),
    );
  }

  Widget _buildHome() {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return state.isLoading
            ? const Center(child: CircularProgressIndicator())
            : Scaffold(
                backgroundColor: homeColor,
                body: RefreshIndicator(
                  onRefresh: _refresh,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 46,
                              height: 46,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: const Image(
                                  image: AssetImage('assets/images/github.png'),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            const Text("Welcome,\nMohamad"),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        HomeSearchBar(searchController: _searchController),
                        const SizedBox(
                          height: 16,
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
    _bloc.add(const Fetch());
  }
}
