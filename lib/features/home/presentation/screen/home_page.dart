import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techx/core/utils/global_colors.dart';
import 'package:techx/di/injection_container.dart';
import 'package:techx/features/home/data/model/item_model.dart';
import 'package:techx/features/home/presentation/bloc/home_bloc.dart';
import 'package:techx/features/home/presentation/widgets/list_banners.dart';
import 'package:techx/features/home/presentation/widgets/list_brands.dart';
import 'package:techx/features/home/presentation/widgets/home_list_items.dart';
import 'package:techx/features/home/presentation/widgets/search_bar.dart';
import 'package:techx/features/login/presentation/screen/login_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeBloc _bloc = getIt<HomeBloc>();
  List<ItemModel> featuredList = [];
  final TextEditingController _searchController = TextEditingController();
  final PageController _pageController = PageController(initialPage: 0);

  int _currentIndex = 0;
  late final List<Widget> screens = [
    const LoginPage(
      key: Key('login'),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _bloc.add(
      const Fetch(),
    );
  }

  @override
  Widget build(BuildContext context) {
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
                bottomNavigationBar: Material(
                  elevation: 8,
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(16),
                      topLeft: Radius.circular(16)),
                  color: GlobalColors.bottomBarColor,
                  child: BottomNavigationBar(
                    showSelectedLabels: false,
                    elevation: 0,
                    showUnselectedLabels: false,
                    backgroundColor: Colors.transparent,
                    type: BottomNavigationBarType.fixed,
                    unselectedItemColor: GlobalColors.bottomBarItemColor,
                    selectedItemColor: Colors.white,
                    currentIndex: _currentIndex,
                    selectedFontSize: 0,
                    onTap: (index) => _onBottomTap(index),
                    items: [
                      BottomNavigationBarItem(
                          icon: const Icon(
                            Icons.home_outlined,
                          ),
                          activeIcon: _buildSelectedIcon(Icons.home),
                          label: ""),
                      BottomNavigationBarItem(
                          icon: const Icon(
                            Icons.shopping_cart,
                          ),
                          activeIcon: _buildSelectedIcon(Icons.shopping_cart),
                          label: ""),
                      BottomNavigationBarItem(
                          icon: const Icon(
                            Icons.search,
                          ),
                          activeIcon: _buildSelectedIcon(Icons.search),
                          label: ""),
                      BottomNavigationBarItem(
                          icon: const Icon(
                            Icons.favorite_border,
                          ),
                          activeIcon: _buildSelectedIcon(Icons.favorite),
                          label: ""),
                      BottomNavigationBarItem(
                          icon: const Icon(
                            Icons.person_outline,
                          ),
                          activeIcon: _buildSelectedIcon(Icons.person),
                          label: ""),
                    ],
                  ),
                ),
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

  Widget _buildSelectedIcon(IconData icon) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton(
        onPressed: () {},
        backgroundColor: GlobalColors.redColor,
        child: Icon(
          icon,
          color: Colors.white,
        ),
      )
          .animate()
          .scale(
              end: const Offset(
            1.1,
            1.1,
          ))
          .slideY(end: -.3),
    );
  }

  Future<void> _refresh() async {
    _bloc.add(const Fetch());
  }

  _onBottomTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
