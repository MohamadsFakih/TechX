import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/core/data/model/enums.dart';
import 'package:techx/core/utils/categories_manager.dart';
import 'package:techx/features/categories/domain/entity/item_entity.dart';
import 'package:techx/features/categories/domain/usecase/item_usecase.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

@injectable
class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc(this._miniItemUseCase) : super(CategoryState.initial()) {
    on<CategoryEvent>((event, emit) async {
      await event.when(
        showSub: (SubCategoryType category) => _showSubCategory(category, emit),
        showMainCategory: () => _showMainCategory(emit),
        getItems: (MiniSubCategoryType miniSubCategoryType) =>
            _getItems(miniSubCategoryType, emit),
      );
    });
  }

  /// The instance of [MiniItemUseCase]
  final MiniItemUseCase _miniItemUseCase;

  /// The event to get the list of products
  /// depending on the [MiniSubCategoryType]
  Future<void> _getItems(MiniSubCategoryType miniSubCategoryType,
      Emitter<CategoryState> emit) async {
    emit(
      state.copyWith(
        isLoading: true,
        error: "",
        showMiniItems: true,
        showSubCategory: false,
      ),
    );
    try {
      final result = await _miniItemUseCase.getItems(miniSubCategoryType);
      emit(
        state.copyWith(
          miniSubCategoryType: miniSubCategoryType,
          items: result,
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

  /// The function used to show sub categories
  /// depending on the chosen [Category]
  Future<void> _showSubCategory(
      SubCategoryType category, Emitter<CategoryState> emit) async {
    emit(
      state.copyWith(
        showSubCategory: true,
        category: category,
        showMiniItems: false,
      ),
    );
    List<Widget> selectedList = [];
    if (state.category == SubCategoryType.phones) {
      selectedList = phoneSubCategories;
    } else if (state.category == SubCategoryType.laptops) {
      selectedList = laptopsSubCategories;
    } else if (state.category == SubCategoryType.tablets) {
      selectedList = tabletsSubCategories;
    } else if (state.category == SubCategoryType.wearables) {
      selectedList = wearablesSubCategories;
    } else if (state.category == SubCategoryType.gadgets) {
      selectedList = gadgetsSubCategories;
    } else if (state.category == SubCategoryType.gaming) {
      selectedList = gamingSubCategories;
    }
    emit(state.copyWith(selectedList: selectedList));
  }

  /// The function to show the main categories
  Future<void> _showMainCategory(Emitter<CategoryState> emit) async {
    emit(
      state.copyWith(
        showSubCategory: false,
        showMiniItems: false,
      ),
    );
  }
}
