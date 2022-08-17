// ignore_for_file: library_private_types_in_public_api

import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../application/shared/shared.dart';
import '../../../../domain/repositories/contracts/meal_db_repository.dart';
import 'meal_category_ui_state.dart';

part 'meal_category_store.g.dart';

@injectable
class MealCategoryStore = _MealCategoryStoreBase with _$MealCategoryStore;

abstract class _MealCategoryStoreBase with Store {
  final MealDBRepository _repository;

  _MealCategoryStoreBase(this._repository);

  @observable
  MealCategoryUiState _state = const MealCategoryUiState(
    status: UiStatus.initial,
  );

  @computed
  MealCategoryUiState get state => _state;

  @action
  void _setState(MealCategoryUiState newState) => _state = newState;

  Future<void> getAllCategories() async {
    try {
      _setState(
        const MealCategoryUiState(status: UiStatus.loading),
      );

      final responseList = await _repository.listAllMealCategories();

      _setState(
        MealCategoryUiState(
          status: UiStatus.success,
          categories: responseList,
        ),
      );
    } catch (e) {
      _setState(
        const MealCategoryUiState(status: UiStatus.failure),
      );
    }
  }
}
