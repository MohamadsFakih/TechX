import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';
import 'package:techx/features/detailed/domain/usecases/detailed_usecase.dart';

part 'detailed_event.dart';
part 'detailed_state.dart';
part 'detailed_bloc.freezed.dart';

@injectable
class DetailedBloc extends Bloc<DetailedEvent, DetailedState> {
  DetailedBloc(this._detailedUseCase) : super(DetailedState.initial()) {
    on<DetailedEvent>((event, emit) async {
      await event.when(
          addToCart: (MiniItemEntity entity, String id, int quantity,
                  String model, String color) =>
              _addToCart(emit, entity, id, quantity, model, color));
    });
  }

  final DetailedUseCase _detailedUseCase;
  Future _addToCart(Emitter<DetailedState> emit, MiniItemEntity entity,
      String id, int quantity, String model, String color) async {
    emit(
      state.copyWith(isLoading: true, error: ''),
    );
    try {
      await _detailedUseCase.addToCart(
        entity,
        id,
        quantity,
        model,
        color,
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
