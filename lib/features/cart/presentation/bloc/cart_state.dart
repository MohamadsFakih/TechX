part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    @Default([]) List<CartModel> items,
    @Default(false) bool isLoading,
    @Default('') String error,
  }) = _Initial;

  factory CartState.initial() => const CartState();
}
