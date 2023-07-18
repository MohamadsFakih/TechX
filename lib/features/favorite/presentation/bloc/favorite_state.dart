part of 'favorite_bloc.dart';

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState({
    @Default(false) bool isLoading,
    @Default([]) List<MiniItemEntity> items,
    @Default("") String error,
  }) = _Initial;

  factory FavoriteState.initial() => const FavoriteState();
}
