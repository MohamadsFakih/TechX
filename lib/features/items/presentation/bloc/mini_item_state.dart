part of 'mini_item_bloc.dart';

@freezed
class MiniItemState with _$MiniItemState {
  const factory MiniItemState({
    @Default([]) List<MiniItemEntity> items,
    @Default(false) bool isLoading,
    @Default("") String error,
  }) = _Initial;

  factory MiniItemState.initial() => const MiniItemState();
}
