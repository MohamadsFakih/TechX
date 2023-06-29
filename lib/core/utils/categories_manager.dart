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
    type: CategoryType.category,
    subCategory: SubCategoryType.laptops,
  ),
  CategoryItem(
    coverImage: "assets/images/category/tablets_category.jpg",
    name: "Tablets",
    type: CategoryType.category,
    subCategory: SubCategoryType.tablets,
  ),
  CategoryItem(
    coverImage: "assets/images/category/wearables_category.jpg",
    name: "Wearables",
    type: CategoryType.category,
    subCategory: SubCategoryType.wearables,
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
const List<Widget> laptopsSubCategories = [
  CategoryItem(
    coverImage: "assets/images/subCategory/apple_laptop_sub.jpg",
    name: "MacBook",
  ),
  CategoryItem(
    coverImage: "assets/images/subCategory/used_laptop_sub.jpg",
    name: "Used Laptops",
  ),
  CategoryItem(
    coverImage: "assets/images/subCategory/business_laptop_sub.jpg",
    name: "Business Laptops",
  ),
  CategoryItem(
    coverImage: "assets/images/subCategory/back_sub.jpg",
    name: "Back",
    type: CategoryType.back,
  ),
];
const List<Widget> tabletsSubCategories = [
  CategoryItem(
    coverImage: "assets/images/subCategory/ipad_tablet_sub.jpg",
    name: "Ipads",
  ),
  CategoryItem(
    coverImage: "assets/images/subCategory/samsung_tab_sub.jpg",
    name: "Samsung Tablets",
  ),
  CategoryItem(
    coverImage: "assets/images/subCategory/back_sub.jpg",
    name: "Back",
    type: CategoryType.back,
  ),
];
const List<Widget> wearablesSubCategories = [
  CategoryItem(
    coverImage: "assets/images/subCategory/samsung_buds_sub.jpg",
    name: "Galaxy Buds",
  ),
  CategoryItem(
    coverImage: "assets/images/subCategory/apple_buds_sub.png",
    name: "Apple Airpods",
  ),
  CategoryItem(
    coverImage: "assets/images/subCategory/samsung_watch_sub.jpg",
    name: "Galaxy Watches",
  ),
  CategoryItem(
    coverImage: "assets/images/subCategory/apple_watch_sub.jpg",
    name: "Apple Watches",
  ),
  CategoryItem(
    coverImage: "assets/images/subCategory/headphones_buds_sub.jpg",
    name: "Headphones",
  ),
  CategoryItem(
    coverImage: "assets/images/subCategory/back_sub.jpg",
    name: "Back",
    type: CategoryType.back,
  ),
];
