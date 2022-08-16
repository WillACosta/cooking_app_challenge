import 'package:equatable/equatable.dart';

import '../../../../application/shared/shared.dart';
import '../../../../domain/entities/entities.dart';

class MealCategoryItemUiState extends Equatable {
  final UiStatus status;
  final List<MealCategoryItem> meals;

  const MealCategoryItemUiState({
    required this.status,
    this.meals = const [],
  });

  @override
  List<Object?> get props => [status, meals];
}
