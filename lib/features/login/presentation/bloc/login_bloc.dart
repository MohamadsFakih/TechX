import 'package:bloc/bloc.dart';
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
          signIn: (LoginCredentials loginCredentials) =>
              _signIn(loginCredentials, emit));
    });
  }

  final LoginUseCase _loginUseCase;

  _signIn(LoginCredentials loginCredentials, Emitter<LoginState> emit) async {
    emit(state.copyWith(isLoading: true, error: ''));

    try {
      await _loginUseCase.signIn(loginCredentials);
    } catch (e) {
      emit(state.copyWith(error: e.toString()));
    }

    emit(state.copyWith(isLoading: false));
  }
}
