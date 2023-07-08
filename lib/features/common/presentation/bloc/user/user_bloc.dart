import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';
import 'package:techx/features/common/domain/usecase/user_usecase.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc(this._useCase) : super(UserState.initial()) {
    on<UserEvent>((event, emit) async {
      await event.when(
        checkSignedIn: () => _checkSignedIn(emit),
        addLike: (MiniItemEntity item, String type) =>
            _addAlike(item, type, emit),
        getUid: () => _getUid(emit),
      );
    });
  }
  final UserUseCase _useCase;

  Future _checkSignedIn(Emitter<UserState> emit) async {
    emit(
      state.copyWith(isLoading: true, error: ''),
    );
    final result = await _useCase.isSignedIn();
    emit(state.copyWith(
      isSignedIn: result,
      isLoading: false,
    ));
  }

  Future _addAlike(
      MiniItemEntity item, String type, Emitter<UserState> emit) async {
    final result = await _useCase.addLike(item, type);
    result.fold(
      (l) {
        emit(
          state.copyWith(error: l),
        );
      },
      (r) {
        emit(
          state.copyWith(error: ''),
        );
      },
    );
  }

  Future _getUid(Emitter<UserState> emit) async {
    emit(
      state.copyWith(
        isLoading: true,
      ),
    );
    try {
      final result = await _useCase.getCurrentUid();
      emit(
        state.copyWith(id: result),
      );
    } catch (e) {
      emit(
        state.copyWith(error: e.toString()),
      );
    }
    emit(
      state.copyWith(
        isLoading: false,
      ),
    );
  }
}
