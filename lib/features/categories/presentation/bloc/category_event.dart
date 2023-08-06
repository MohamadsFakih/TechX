part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  /// The event to show sub categories
  /// depending on the chosen [Category]
  const factory CategoryEvent.showSub(SubCategoryType category) =
      ShowSubCategory;

  /// The event to show the main categories
  const factory CategoryEvent.showMainCategory() = ShowMainCategory;

  /// The event to get the list of products
  /// depending on the [MiniSubCategoryType]
  const factory CategoryEvent.getItems(
      MiniSubCategoryType miniSubCategoryType) = GetItems;
}
