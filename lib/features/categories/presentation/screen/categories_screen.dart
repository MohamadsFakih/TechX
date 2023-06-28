import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:techx/core/utils/mds.dart';
import 'package:techx/features/categories/presentation/widget/category_item.dart';
import 'package:techx/features/categories/presentation/widget/search_bar.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: homeColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              HomeSearchBar(
                searchController: _searchController,
              ),
              Expanded(
                child: ListView(
                  children: const [
                    CategoryItem(
                      coverImage: "assets/images/category/phones_category.jpg",
                      name: "Phones",
                    ),
                    CategoryItem(
                      coverImage: "assets/images/category/laptops_category.png",
                      name: "Laptops",
                    ),
                    CategoryItem(
                      coverImage: "assets/images/category/tablets_category.jpg",
                      name: "Tablets",
                    ),
                    CategoryItem(
                      coverImage:
                          "assets/images/category/wearables_category.jpg",
                      name: "Wearables",
                    ),
                    CategoryItem(
                      coverImage: "assets/images/category/gadgets_category.jpg",
                      name: "Gadgets",
                    ),
                    CategoryItem(
                      coverImage: "assets/images/category/gaming_category.jpg",
                      name: "Gaming",
                    ),
                    CategoryItem(
                      coverImage:
                          "assets/images/category/accessories_category.jpg",
                      name: "Accessories",
                    ),
                  ]
                      .animate(
                        interval: const Duration(milliseconds: 400),
                      )
                      .fade(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
