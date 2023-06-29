part of 'mini_item_bloc.dart';

@freezed
class MiniItemEvent with _$MiniItemEvent {
  const factory MiniItemEvent.getItems(
      MiniSubCategoryType miniSubCategoryType) = getItems;
}
