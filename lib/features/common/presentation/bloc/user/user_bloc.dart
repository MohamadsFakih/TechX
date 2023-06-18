import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
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
}
