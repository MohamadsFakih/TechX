import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/features/login/data/model/login_credentials.dart';
import 'package:techx/features/login/domain/usecase/login_usecase.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._loginUseCase) : super(LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      await event.when(
        signIn: (LoginCredentials loginCredentials) => _signIn(
          loginCredentials,
          emit,
        ),
      );
    });
  }

  final LoginUseCase _loginUseCase;

  Future<void> _signIn(
      LoginCredentials loginCredentials, Emitter<LoginState> emit) async {
    emit(
      state.copyWith(
        isLoading: true,
        error: '',
      ),
    );

    try {
      final result = await _loginUseCase.signIn(loginCredentials);
      result.fold(
        (l) => emit(
          state.copyWith(
            error: l.toString(),
          ),
        ),
        (r) => emit(
          state.copyWith(
            signedIn: true,
            userId: r,
          ),
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
