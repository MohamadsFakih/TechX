part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  /// The event to get the cart items
  const factory CartEvent.getCartItems(String id) = GetCartItems;

  /// The event to get the credit cards stored
  const factory CartEvent.getCreditCards() = GetCreditCards;

  /// The event to remove a cart item
  const factory CartEvent.removeCartItem(String userId, String itemId) =
      RemoveCartItem;

  /// The event to clear the entire cart
  const factory CartEvent.clearCart(String userId) = ClearCart;
}
