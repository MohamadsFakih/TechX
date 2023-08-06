part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState({
    /// The bool used to show the sub categories
    @Default(false) bool showSubCategory,

    /// The bool used to show the products
    @Default(false) bool showMiniItems,

    /// The bool used to show the loading bar
    @Default(false) bool isLoading,

    /// The current selected category
    @Default(SubCategoryType.none) SubCategoryType category,

    /// The current selected sub category
    @Default(MiniSubCategoryType.none) MiniSubCategoryType miniSubCategoryType,

    /// The list of sub categories
    @Default([]) List<Widget> selectedList,

    /// The products list
    @Default([]) List<MiniItemEntity> items,

    /// Used to catch errors
    @Default("") String error,
  }) = _Initial;

  factory CategoryState.initial() => const CategoryState();
}
