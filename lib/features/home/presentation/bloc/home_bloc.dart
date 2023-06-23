import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/features/home/data/model/item_model.dart';
import 'package:techx/features/home/domain/usecases/home_usecase.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._homeUseCase) : super(HomeState.initial()) {
    on<HomeEvent>((event, emit) async {
      await event.when(getFeatured: () => _getFeatured(emit));
    });
  }
  final HomeUseCase _homeUseCase;

  Future<void> _getFeatured(Emitter<HomeState> emit) async {
    emit(state.copyWith(
      isLoading: true,
      errorMessage: '',
    ));
    try {
      final result = _homeUseCase.getFeatured();
      emit(state.copyWith(featured: result));
    } catch (e) {
      emit(state.copyWith(
        errorMessage: e.toString(),
      ));
    }
    emit(state.copyWith(isLoading: false));
  }
}
