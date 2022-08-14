import 'package:equatable/equatable.dart';

import '../../../../domain/entities/entities.dart';

abstract class MealCategoryUiState extends Equatable {}

class MealCategoryInitialState extends MealCategoryUiState {
  @override
  List<Object?> get props => [];
}

class MealCategoryLoadingState extends MealCategoryUiState {
  @override
  List<Object?> get props => [];
}

class MealCategoryErrorState extends MealCategoryUiState {
  @override
  List<Object?> get props => [];
}

class MealCategorySuccessState extends MealCategoryUiState {
  final List<MealCategory> categories;

  MealCategorySuccessState(this.categories);

  @override
  List<Object?> get props => [categories];
}
