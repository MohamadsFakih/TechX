import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:techx/core/utils/mds.dart';
import 'package:techx/features/categories/presentation/categories_screen.dart';
import 'package:techx/features/favorite/presentation/favorite_screen.dart';
import 'package:techx/features/home/presentation/screen/home_page.dart';
import 'package:techx/features/settings/presentation/screen/settings_screen.dart';

class DefaultScreen extends StatefulWidget {
  const DefaultScreen({super.key});

  @override
  State<DefaultScreen> createState() => _DefaultScreenState();
}

class _DefaultScreenState extends State<DefaultScreen> {
  final ValueNotifier<int> _currentIndex = ValueNotifier(0);
  late final PageController _controller;

  late final List<Widget> screens = [
    const HomePage(),
    const Center(child: Text("placeholder")),
    const CategoriesScreen(),
    const FavoriteScreen(),
    const SettingsScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: _currentIndex.value);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _buildScaffold();
  }

  Scaffold _buildScaffold() {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: ValueListenableBuilder(
            valueListenable: _currentIndex,
            builder: (a, b, c) {
              return PageView(
                controller: _controller,
                physics: const NeverScrollableScrollPhysics(),
                children: screens,
              );
            }),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return ValueListenableBuilder(
        valueListenable: _currentIndex,
        builder: (a, b, c) {
          return BottomNavigationBar(
            showSelectedLabels: false,
            elevation: 0,
            showUnselectedLabels: false,
            backgroundColor: Colors.transparent,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: bottomBarItemColor,
            selectedItemColor: Colors.white,
            currentIndex: _currentIndex.value,
            selectedFontSize: 0,
            onTap: (index) => _onBottomTapped(index),
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
          );
        });
  }

  Widget _buildSelectedIcon(IconData icon) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton(
        onPressed: () {},
        backgroundColor: redColor,
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

  void _onBottomTapped(int value) {
    _currentIndex.value = value;
    _controller.animateToPage(
      _currentIndex.value,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }
}
