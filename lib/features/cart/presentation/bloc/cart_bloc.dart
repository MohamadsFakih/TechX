import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/features/cart/data/model/cart_model.dart';
import 'package:techx/features/cart/domain/usecase/cart_usecase.dart';
import 'package:techx/features/common/domain/entity/credit_entity.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc(this._cartUseCase) : super(CartState.initial()) {
    on<CartEvent>(
      (event, emit) async {
        await event.when(
          getCartItems: (String id) => _getCartItems(
            emit,
            id,
          ),
          removeCartItem: (
            String userId,
            String itemId,
          ) =>
              _removeCartItem(
            emit,
            userId,
            itemId,
          ),
          clearCart: (String userId) => _clearCart(
            emit,
            userId,
          ),
          getCreditCards: () => _getCreditCards(emit),
        );
      },
    );
  }

  /// The instance of [CartUseCase]
  final CartUseCase _cartUseCase;

  /// The function used to get the user's cart with [userID]
  Future _getCartItems(Emitter<CartState> emit, String id) async {
    emit(
      state.copyWith(isLoading: true, error: ''),
    );
    try {
      final result = await _cartUseCase.getCartItems(id);
      emit(
        state.copyWith(items: result),
      );
      await _getCreditCards(emit);
    } catch (e) {
      emit(
        state.copyWith(error: e.toString()),
      );
    }
    emit(
      state.copyWith(isLoading: false, error: ''),
    );
  }

  /// The function used to remove a cart item with [itemId] from [userId]
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

  /// The function used to clear the cart of the user [userId]
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

  /// The function used to get the list of credit cards from [SharedPreferences]
  Future _getCreditCards(Emitter<CartState> emit) async {
    emit(
      state.copyWith(
        isLoading: true,
        error: "",
      ),
    );

    try {
      final result = await _cartUseCase.getCreditCard();
      emit(
        state.copyWith(
          creditCards: result,
          isLoading: false,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          error: e.toString(),
        ),
      );
    }
  }
}
