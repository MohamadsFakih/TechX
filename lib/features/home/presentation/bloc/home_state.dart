part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<ItemModel> featured,
    @Default([]) List<ItemModel> newList,
    @Default([]) List<BannerItem> banners,
    @Default(false) isLoading,
    @Default("") errorMessage,
  }) = _Initial;

  factory HomeState.initial() => const HomeState();
}
