part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    /// The list of cart items
    @Default([]) List<CartModel> items,

    /// The list of credit cards
    @Default([]) List<CreditEntity> creditCards,

    /// Determines if the screen is loading
    @Default(false) bool isLoading,

    /// Used to store errors
    @Default('') String error,
  }) = _Initial;

  factory CartState.initial() => const CartState();
}
