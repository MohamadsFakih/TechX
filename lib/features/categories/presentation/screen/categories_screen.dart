import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techx/core/utils/mds.dart';
import 'package:techx/di/injection_container.dart';
import 'package:techx/features/categories/presentation/bloc/category_bloc.dart';
import 'package:techx/core/utils/categories_manager.dart';
import 'package:techx/features/categories/presentation/widget/mini_item_view.dart';
import 'package:techx/features/common/presentation/widget/techx_logo.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key, required this.userId});

  final String userId;
  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  final CategoryBloc _categoryBloc = getIt<CategoryBloc>();
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider.value(
      value: _categoryBloc,
      child: _buildScaffold(),
    );
  }

  Widget _buildScaffold() {
    return WillPopScope(
      onWillPop: () async {
        if (_categoryBloc.state.showSubCategory) {
          _categoryBloc.add(
            const ShowMainCategory(),
          );
        } else if (_categoryBloc.state.showMiniItems) {
          _categoryBloc.add(
            ShowSubCategory(_categoryBloc.state.category),
          );
        } else {
          SystemNavigator.pop();
        }
        return false;
      },
      child: Scaffold(
        backgroundColor: homeColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: BlocBuilder<CategoryBloc, CategoryState>(
              builder: (context, state) {
                return Column(
                  children: [
                    Row(
                      children: [
                        if (_categoryBloc.state.showSubCategory ||
                            _categoryBloc.state.showMiniItems)
                          GestureDetector(
                            onTap: () {
                              if (state.showSubCategory) {
                                _categoryBloc.add(
                                  const ShowMainCategory(),
                                );
                              } else if (state.showMiniItems) {
                                _categoryBloc.add(
                                  ShowSubCategory(state.category),
                                );
                              }
                            },
                            child: const Icon(
                              Icons.arrow_back,
                              color: mainColor,
                            ),
                          ),
                        const Spacer(),
                        const TechXLogo(),
                        const Spacer(),
                      ],
                    ),
                    Expanded(
                      child: state.showMiniItems
                          ? MiniItemView(
                              itemType: state.miniSubCategoryType,
                              itemList: state.items,
                              isLoading: state.isLoading,
                              userId: widget.userId,
                            )
                          : state.showSubCategory
                              ? _subView(state.selectedList)
                              : _buildListView(),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildListView() {
    return ListView(
      children: mainCategories,
    ).animate().fade();
  }

  Widget _subView(selectedList) {
    final List<Widget> result = selectedList;
    return ListView(
      children: result
          .animate(
            interval: const Duration(milliseconds: 400),
          )
          .slideX()
          .fade(),
    );
  }
}
