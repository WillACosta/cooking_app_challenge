import 'package:flutter_test/flutter_test.dart';

import 'package:cooking_home/application/shared/shared.dart';
import 'package:cooking_home/modules/meal/store/meal_category_item/meal_category_item.dart';

void main() {
  group('MealCategoryItemUiState', () {
    test('should supports value comparisons', () {
      expect(
        const MealCategoryItemUiState(status: UiStatus.initial),
        equals(
          const MealCategoryItemUiState(status: UiStatus.initial),
        ),
      );
    });
  });
}
