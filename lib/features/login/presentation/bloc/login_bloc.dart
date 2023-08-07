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
        rememberMe: (String email, String password, bool toggleValue) =>
            _rememberMe(
          emit,
          email,
          password,
          toggleValue,
        ),
        getLoginCredentials: () => _getLoginCredentials(
          emit,
        ),
        sendPasswordReset: (String email) => _sendPasswordReset(
          emit,
          email,
        ),
      );
    });
  }

  /// The instance of [LoginUseCase]
  final LoginUseCase _loginUseCase;

  /// The saved login credentials (locally)
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
              ), (r) {
        _rememberMe(
          emit,
          loginCredentials.email,
          loginCredentials.password,
          loginCredentials.isRemembered,
        );
        emit(
          state.copyWith(
            signedIn: true,
            userId: r,
          ),
        );
      });
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

  /// The event called to save the user's credentials
  Future _rememberMe(Emitter<LoginState> emit, String email, String password,
      bool toggleValue) async {
    await _loginUseCase.rememberMe(
      email,
      password,
      toggleValue,
    );
  }

  /// The event called to get the user's saved credentials
  Future _getLoginCredentials(Emitter<LoginState> emit) async {
    emit(
      state.copyWith(
        isLoading: true,
        error: '',
      ),
    );
    final result = await _loginUseCase.getLoginCredentials();

    emit(
      state.copyWith(
        isLoading: false,
        loginCredentials: result,
      ),
    );
  }

  /// The event to send a password reset email
  Future _sendPasswordReset(Emitter<LoginState> emit, String email) async {
    emit(
      state.copyWith(
        isLoading: true,
        error: '',
      ),
    );
    await _loginUseCase.forgotPassword(email);

    emit(
      state.copyWith(
        isLoading: false,
      ),
    );
  }
}
