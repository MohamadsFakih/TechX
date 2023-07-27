part of 'detailed_bloc.dart';

@freezed
class DetailedEvent with _$DetailedEvent {
  const factory DetailedEvent.addToCart(MiniItemEntity itemEntity, String id) =
      AddToCart;
}
