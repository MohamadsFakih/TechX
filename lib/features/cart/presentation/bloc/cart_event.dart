part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.getCartItems(String id) = GetCartItems;
  const factory CartEvent.getCreditCards() = GetCreditCards;
  const factory CartEvent.removeCartItem(String userId, String itemId) =
      RemoveCartItem;
  const factory CartEvent.clearCart(String userId) = ClearCart;
}
