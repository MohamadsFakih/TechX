import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techx/core/data/model/enums.dart';
import 'package:techx/core/utils/categories_manager.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

@injectable
class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(CategoryState.initial()) {
    on<CategoryEvent>((event, emit) {
      event.when(
        showSub: (SubCategoryType category) => _showSubCategory(category, emit),
        showMainCategory: () => _showMainCategory(emit),
      );
    });
  }

  void _showSubCategory(SubCategoryType category, Emitter<CategoryState> emit) {
    emit(
      state.copyWith(
        showSubCategory: true,
        category: category,
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
    }
    emit(state.copyWith(selectedList: selectedList));
  }

  void _showMainCategory(Emitter<CategoryState> emit) {
    emit(
      state.copyWith(
        showSubCategory: false,
      ),
    );
  }
}
