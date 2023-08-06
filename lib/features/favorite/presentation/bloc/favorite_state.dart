part of 'favorite_bloc.dart';

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState({
    /// To check if the page is loading or not
    @Default(false) bool isLoading,

    /// The list of favorite products
    @Default([]) List<MiniItemEntity> items,

    /// Used to catch the errors
    @Default("") String error,
  }) = _Initial;

  factory FavoriteState.initial() => const FavoriteState();
}
