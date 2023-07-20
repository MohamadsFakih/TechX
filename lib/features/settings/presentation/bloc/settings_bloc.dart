import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(SettingsState.initial()) {
    on<SettingsEvent>((event, emit) {
      event.when(
          toContact: () => _toContact(emit),
          toFaq: () => _toFaq(emit),
          toMain: () => toMain(emit));
    });
  }

  _toContact(Emitter<SettingsState> emit) {
    emit(
      state.copyWith(
        showContact: true,
        showFaq: false,
        showMain: false,
      ),
    );
  }

  _toFaq(Emitter<SettingsState> emit) {
    emit(
      state.copyWith(
        showContact: false,
        showFaq: true,
        showMain: false,
      ),
    );
  }

  toMain(Emitter<SettingsState> emit) {
    emit(
      state.copyWith(
        showContact: false,
        showFaq: false,
        showMain: true,
      ),
    );
  }
}
