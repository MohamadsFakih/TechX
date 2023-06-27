part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getFeatured() = GetFeatured;
  const factory HomeEvent.getNew() = GetNew;
  const factory HomeEvent.getBanners() = GetBanners;
  const factory HomeEvent.fetch() = Fetch;
}
