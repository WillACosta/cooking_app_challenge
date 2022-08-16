import 'package:equatable/equatable.dart';

import '../../../../application/shared/enums/enums.dart';
import '../../../../domain/entities/entities.dart';

class MealCategoryUiState extends Equatable {
  final UiStatus status;
  final List<MealCategory> categories;

  const MealCategoryUiState({
    required this.status,
    this.categories = const [],
  });

  @override
  List<Object?> get props => [
        status,
        categories,
      ];
}
