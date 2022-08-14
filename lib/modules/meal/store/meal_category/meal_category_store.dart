// ignore_for_file: library_private_types_in_public_api

import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../domain/repositories/meal_db_repository.dart';
import 'meal_category_ui_state.dart';

part 'meal_category_store.g.dart';

@injectable
class MealCategoryStore = _MealCategoryStoreBase with _$MealCategoryStore;

abstract class _MealCategoryStoreBase with Store {
  final MealDBRepository _repository;

  _MealCategoryStoreBase(this._repository) {
    _getAllCategories();
  }

  @observable
  MealCategoryUiState _state = MealCategoryInitialState();

  @computed
  MealCategoryUiState get state => _state;

  @action
  void _setState(MealCategoryUiState newState) => _state = newState;

  void _getAllCategories() async {
    try {
      final responseList = await _repository.listAllMealCategories();
      _setState(MealCategorySuccessState(responseList));
    } catch (e) {
      _setState(MealCategoryErrorState());
    }
  }
}
