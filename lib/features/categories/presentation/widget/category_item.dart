import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techx/core/data/model/enums.dart';
import 'package:techx/core/utils/mds.dart';
import 'package:techx/features/categories/presentation/bloc/category_bloc.dart';

class CategoryItem extends StatefulWidget {
  const CategoryItem({
    super.key,
    required this.coverImage,
    required this.name,
    this.type = CategoryType.none,
    this.subCategory = SubCategoryType.none,
    this.miniSubCategoryType = MiniSubCategoryType.none,
  });

  final String coverImage;
  final String name;
  final CategoryType type;
  final SubCategoryType subCategory;
  final MiniSubCategoryType miniSubCategoryType;

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, state) {
        return _buildAspectRatio(context);
      },
    );
  }

  AspectRatio _buildAspectRatio(BuildContext context) {
    final categoryBloc = BlocProvider.of<CategoryBloc>(context);
    return AspectRatio(
      aspectRatio: 1.9,
      child: InkWell(
        onTap: () {
          if (widget.type == CategoryType.category) {
            categoryBloc.add(
              ShowSubCategory(widget.subCategory),
            );
          } else if (widget.type == CategoryType.subCategory) {
            categoryBloc.add(
              GetItems(widget.miniSubCategoryType),
            );
          }
        },
        borderRadius: BorderRadius.circular(20),
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Stack(
            children: [
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    widget.coverImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: AspectRatio(
                  aspectRatio: 4.2,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          blackColor.withOpacity(0.7),
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.name,
                    style: const TextStyle(fontSize: 25, color: whiteColor),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
