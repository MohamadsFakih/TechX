import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/features/common/domain/entity/credit_entity.dart';
import 'package:techx/features/settings/domain/usecase/credit_usecase.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc(this._creditUseCase) : super(SettingsState.initial()) {
    on<SettingsEvent>((event, emit) async {
      await event.when(
        getCreditCards: () => _getCreditCards(
          emit,
        ),
        addCreditCard: (CreditEntity creditEntity) => _addCreditCard(
          emit,
          creditEntity,
        ),
        deleteCreditCard: (String cardNumber) => _deleteCreditCard(
          emit,
          cardNumber,
        ),
      );
    });
  }

  /// The instance of [CreditUseCase]
  final CreditUseCase _creditUseCase;

  /// The function that gets the saved credit cards
  Future _getCreditCards(Emitter<SettingsState> emit) async {
    emit(
      state.copyWith(
        isLoading: true,
        error: "",
      ),
    );

    try {
      final result = await _creditUseCase.getCreditCard();
      emit(
        state.copyWith(
          creditCards: result,
          isLoading: false,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          error: e.toString(),
        ),
      );
    }
  }

  /// The function that adds a credit card
  Future _addCreditCard(
      Emitter<SettingsState> emit, CreditEntity creditEntity) async {
    final result = await _creditUseCase.addCreditCard(
      creditEntity,
    );
    await result.fold(
      (l) async => state.copyWith(error: l.toString()),
      (r) async {
        await _getCreditCards(
          emit,
        );
      },
    );
  }

  /// The function to delete a credit card
  Future _deleteCreditCard(
      Emitter<SettingsState> emit, String cardNumber) async {
    final result = await _creditUseCase.deleteCreditCard(
      cardNumber,
    );
    await result.fold(
      (l) async => state.copyWith(error: l.toString()),
      (r) async {
        await _getCreditCards(
          emit,
        );
      },
    );
  }
}
