import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/features/cart/domain/usecase/cart_usecase.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc(this._cartUseCase) : super(CartState.initial()) {
    on<CartEvent>((event, emit) async {
      await event.when(getCartItems: () => _getCartItems(emit));
    });
  }
  final CartUseCase _cartUseCase;

  Future _getCartItems(Emitter<CartState> emit) async {
    emit(
      state.copyWith(isLoading: true, error: ''),
    );
    try {
      final result = await _cartUseCase.getCartItems();
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
}
