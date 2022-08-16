// ignore_for_file: library_private_types_in_public_api

import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../domain/repositories/meal_db_repository.dart';
import '../../../../application/shared/shared.dart';
import 'meal_category_item.dart';

part 'meal_category_item_store.g.dart';

@singleton
class MealCategoryItemStore = _MealCategoryItemStoreBase
    with _$MealCategoryItemStore;

abstract class _MealCategoryItemStoreBase with Store {
  final MealDBRepository _repository;

  _MealCategoryItemStoreBase(this._repository);

  @observable
  MealCategoryItemUiState _state = const MealCategoryItemUiState(
    status: UiStatus.initial,
  );

  @observable
  String currentCategoryName = '';

  @computed
  MealCategoryItemUiState get state => _state;

  @action
  void _setState(MealCategoryItemUiState newState) => _state = newState;

  @action
  Future<void> getAllMealsByCategoryName(String categoryName) async {
    try {
      _setState(const MealCategoryItemUiState(status: UiStatus.loading));

      currentCategoryName = categoryName;

      final responseList = await _repository.filterMealsByCategory(
        categoryName,
      );

      _setState(MealCategoryItemUiState(
        status: UiStatus.success,
        meals: responseList,
      ));
    } catch (e) {
      _setState(const MealCategoryItemUiState(
        status: UiStatus.failure,
      ));
    }
  }
}
