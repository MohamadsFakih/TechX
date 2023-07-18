import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';
import 'package:techx/features/categories/domain/usecase/item_usecase.dart';

part 'favorite_event.dart';
part 'favorite_state.dart';
part 'favorite_bloc.freezed.dart';

@injectable
class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  FavoriteBloc(this._useCase) : super(FavoriteState.initial()) {
    on<FavoriteEvent>((event, emit) async {
      await event.when(
        getFavorites: (String uid) => _getFavorites(
          uid,
          emit,
        ),
      );
    });
  }
  final MiniItemUseCase _useCase;

  Future _getFavorites(String uid, Emitter<FavoriteState> emit) async {
    emit(
      state.copyWith(
        isLoading: true,
      ),
    );
    try {
      final result = await _useCase.getFavorites(uid);
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
