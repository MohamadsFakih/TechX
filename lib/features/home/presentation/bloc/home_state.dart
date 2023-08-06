part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    /// The list of featured products
    @Default([]) List<ItemModel> featured,

    /// The list of new products
    @Default([]) List<ItemModel> newList,

    /// The list of banners
    @Default([]) List<BannerItem> banners,

    /// To check if the page is loading
    @Default(false) isLoading,

    /// Used to catch error messages
    @Default("") errorMessage,
  }) = _Initial;

  factory HomeState.initial() => const HomeState();
}
