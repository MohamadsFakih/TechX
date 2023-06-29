part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.showSub(SubCategoryType category) =
      ShowSubCategory;
  const factory CategoryEvent.showMainCategory() = ShowMainCategory;
}
