import 'package:flutter_test/flutter_test.dart';

import 'package:cooking_home/modules/meal/store/meal_detail/meal_detail.dart';
import 'package:cooking_home/application/shared/shared.dart';

void main() {
  group('MealDetailUiState', () {
    test('should supports value comparisons', () {
      expect(
        const MealDetailUiState(status: UiStatus.initial),
        equals(
          const MealDetailUiState(status: UiStatus.initial),
        ),
      );
    });
  });
}
