import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/core/data/model/enums.dart';
import 'package:techx/features/items/domain/entity/item_entity.dart';
import 'package:techx/features/items/domain/usecase/item_usecase.dart';

part 'mini_item_event.dart';
part 'mini_item_state.dart';
part 'mini_item_bloc.freezed.dart';

@injectable
class MiniItemBloc extends Bloc<MiniItemEvent, MiniItemState> {
  MiniItemBloc(this._miniItemUseCase) : super(MiniItemState.initial()) {
    on<MiniItemEvent>((event, emit) async {
      await event.when(
          getItems: (MiniSubCategoryType miniSubCategoryType) =>
              _getItems(miniSubCategoryType, emit));
    });
  }
  final MiniItemUseCase _miniItemUseCase;
  Future<void> _getItems(MiniSubCategoryType miniSubCategoryType,
      Emitter<MiniItemState> emit) async {
    emit(
      state.copyWith(isLoading: true, error: ""),
    );
    try {
      final result = await _miniItemUseCase.getApplePhones(miniSubCategoryType);
      emit(
        state.copyWith(
          items: result,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          error: e.toString(),
        ),
      );
    }
    emit(
      state.copyWith(
        isLoading: false,
      ),
    );
  }
}
