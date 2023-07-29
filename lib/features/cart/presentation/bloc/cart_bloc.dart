import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/features/cart/data/model/cart_model.dart';
import 'package:techx/features/cart/domain/usecase/cart_usecase.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc(this._cartUseCase) : super(CartState.initial()) {
    on<CartEvent>((event, emit) async {
      await event.when(
          getCartItems: (String id) => _getCartItems(emit, id),
          removeCartItem: (String userId, String itemId) =>
              _removeCartItem(emit, userId, itemId),
          clearCart: (String userId) => _clearCart(emit, userId));
    });
  }

  final CartUseCase _cartUseCase;

  Future _getCartItems(Emitter<CartState> emit, String id) async {
    emit(
      state.copyWith(isLoading: true, error: ''),
    );
    try {
      final result = await _cartUseCase.getCartItems(id);
      emit(
        state.copyWith(items: result),
      );
    } catch (e) {
      emit(
        state.copyWith(error: e.toString()),
      );
    }
    emit(
      state.copyWith(isLoading: false, error: ''),
    );
  }

  Future _removeCartItem(
      Emitter<CartState> emit, String userId, String itemId) async {
    final result = await _cartUseCase.removeCartItem(itemId, userId);
    await result.fold(
      (l) async => state.copyWith(error: l.toString()),
      (r) async {
        await _getCartItems(emit, userId);
        return state;
      },
    );
  }

  Future _clearCart(Emitter<CartState> emit, String userId) async {
    final result = await _cartUseCase.clearCart(userId);
    await result.fold(
      (l) async => state.copyWith(error: l.toString()),
      (r) async {
        await _getCartItems(emit, userId);
        return state;
      },
    );
  }
}
