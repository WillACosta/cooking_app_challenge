import 'package:equatable/equatable.dart';

import '../../../../domain/entities/entities.dart';

abstract class MealCategoryItemUiState extends Equatable {}

class MealCategoryItemInitialState extends MealCategoryItemUiState {
  @override
  List<Object?> get props => [];
}

class MealCategoryItemLoadingState extends MealCategoryItemUiState {
  @override
  List<Object?> get props => [];
}

class MealCategoryItemErrorState extends MealCategoryItemUiState {
  @override
  List<Object?> get props => [];
}

class MealCategoryItemSuccessState extends MealCategoryItemUiState {
  final List<MealCategoryItem> meals;

  MealCategoryItemSuccessState(this.meals);

  @override
  List<Object?> get props => [meals];
}
