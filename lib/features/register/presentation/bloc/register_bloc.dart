import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/features/register/domain/entity/register_entity.dart';
import 'package:techx/features/register/domain/usecase/register_usecase.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc(this._registerUseCase) : super(RegisterState.initial()) {
    on<RegisterEvent>((event, emit) async {
      await event.when(
        signUp: (RegisterEntity registerEntity) => _signUp(
          registerEntity,
          emit,
        ),
      );
    });
  }

  final RegisterUseCase _registerUseCase;

  Future<void> _signUp(
      RegisterEntity registerEntity, Emitter<RegisterState> emit) async {
    emit(
      state.copyWith(
        isLoading: true,
        error: '',
      ),
    );
    try {
      if (registerEntity.password == registerEntity.retryPassword) {
        await _registerUseCase.signUp(registerEntity).then(
              (value) => emit(
                state.copyWith(
                  signedIn: true,
                ),
              ),
            );
      } else {
        emit(
          state.copyWith(error: "Passwords do not match"),
        );
      }
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
