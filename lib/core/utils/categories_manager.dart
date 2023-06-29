import 'package:flutter/material.dart';
import 'package:techx/core/data/model/enums.dart';

import '../../features/categories/presentation/widget/category_item.dart';

const List<Widget> mainCategories = [
  CategoryItem(
    coverImage: "assets/images/category/phones_category.jpg",
    name: "Phones",
    type: CategoryType.category,
    subCategory: SubCategoryType.phones,
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
    coverImage: "assets/images/category/wearables_category.jpg",
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
    coverImage: "assets/images/category/accessories_category.jpg",
    name: "Accessories",
  ),
  CategoryItem(
    coverImage: "assets/images/category/accessories_category.jpg",
    name: "Accessories",
  ),
];
const List<Widget> phoneSubCategories = [
  CategoryItem(
    coverImage: "assets/images/subCategory/iphone_sub.jpg",
    name: "Apple Phones",
  ),
  CategoryItem(
    coverImage: "assets/images/subCategory/samsung_sub.jpg",
    name: "Samsung Phones",
  ),
  CategoryItem(
    coverImage: "assets/images/subCategory/back_sub.jpg",
    name: "Back",
    type: CategoryType.back,
  ),
];
