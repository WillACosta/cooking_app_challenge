// ignore_for_file: library_private_types_in_public_api

import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../application/shared/shared.dart';
import '../../../../domain/repositories/contracts/meal_db_repository.dart';
import 'meal_detail_ui_state.dart';

part 'meal_detail_store.g.dart';

@injectable
class MeaDetailStore = _MeaDetailStoreBase with _$MeaDetailStore;

abstract class _MeaDetailStoreBase with Store {
  final MealDBRepository _repository;

  _MeaDetailStoreBase(this._repository);

  @observable
  MealDetailUiState _state = const MealDetailUiState(status: UiStatus.initial);

  @action
  void _setState(MealDetailUiState newState) => _state = newState;

  @computed
  MealDetailUiState get state => _state;

  Future<void> getMealByID(String id) async {
    try {
      _setState(const MealDetailUiState(status: UiStatus.loading));

      final meal = await _repository.getMealByID(id);

      _setState(MealDetailUiState(status: UiStatus.success, meal: meal));
    } catch (e) {
      _setState(const MealDetailUiState(status: UiStatus.failure));
    }
  }
}
