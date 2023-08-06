part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  /// The event to get the featured products
  const factory HomeEvent.getFeatured() = GetFeatured;

  /// The event to get the new products
  const factory HomeEvent.getNew() = GetNew;

  /// The event to get the banners
  const factory HomeEvent.getBanners() = GetBanners;

  /// The event that runs all of the above together
  const factory HomeEvent.fetch() = Fetch;
}
