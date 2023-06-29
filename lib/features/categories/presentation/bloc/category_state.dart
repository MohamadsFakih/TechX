part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState({
    @Default(false) bool showSubCategory,
    @Default(SubCategoryType.none) SubCategoryType category,
    @Default([]) List<Widget> selectedList,
  }) = _Initial;

  factory CategoryState.initial() => const CategoryState();
}
