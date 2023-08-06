part of 'favorite_bloc.dart';

@freezed
class FavoriteEvent with _$FavoriteEvent {
  /// The event to get the favorite products
  const factory FavoriteEvent.getFavorites(String uid) = GetFavorites;
}
