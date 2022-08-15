import 'package:equatable/equatable.dart';

import '../../../../application/shared/shared.dart';
import '../../../../domain/entities/entities.dart';

class MealDetailUiState extends Equatable {
  final UiStatus status;
  final Meal? meal;

  const MealDetailUiState({
    this.status = UiStatus.initial,
    this.meal,
  });

  @override
  List<Object?> get props => [status, meal];
}
