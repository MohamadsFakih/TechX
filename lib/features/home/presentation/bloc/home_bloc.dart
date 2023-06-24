import 'package:flutter_bloc/flutter_bloc.dart';
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
      await event.when(
          getFeatured: () => _getFeatured(emit),
          getBanners: () => _getBanners(emit),
          fetch: () => _fetch(emit));
    });
  }
  final HomeUseCase _homeUseCase;

  Future<void> _getFeatured(Emitter<HomeState> emit) async {
    try {
      await _homeUseCase
          .getFeatured()
          .then((value) => emit(state.copyWith(featured: value)));
    } catch (e) {
      emit(state.copyWith(
        errorMessage: e.toString(),
      ));
    }
  }

  _getBanners(Emitter<HomeState> emit) async {
    try {
      await _homeUseCase
          .getBanners()
          .then((value) => emit(state.copyWith(banners: value)));
    } catch (e) {
      emit(
        state.copyWith(
          errorMessage: e.toString(),
        ),
      );
    }
  }

  _fetch(Emitter<HomeState> emit) async {
    emit(state.copyWith(
      isLoading: true,
      errorMessage: '',
    ));
    await _getBanners(emit);
    await _getFeatured(emit);

    emit(
      state.copyWith(isLoading: false),
    );
  }
}
