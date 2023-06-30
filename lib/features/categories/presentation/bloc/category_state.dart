part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState({
    @Default(false) bool showSubCategory,
    @Default(false) bool showMiniItems,
    @Default(false) bool isLoading,
    @Default(SubCategoryType.none) SubCategoryType category,
    @Default(MiniSubCategoryType.none) MiniSubCategoryType miniSubCategoryType,
    @Default([]) List<Widget> selectedList,
    @Default([]) List<MiniItemEntity> items,
    @Default("") String error,
  }) = _Initial;

  factory CategoryState.initial() => const CategoryState();
}
