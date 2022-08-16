import 'package:flutter_test/flutter_test.dart';

import 'package:cooking_home/application/shared/shared.dart';
import 'package:cooking_home/modules/meal/store/store.dart';

import '../../../../fixtures/mock/mock.dart';

void main() {
  group('MealCategoryUiState', () {
    test('should supports value comparisons', () {
      expect(
        MealCategoryUiState(
          status: UiStatus.success,
          categories: MockMeal.categories,
        ),
        equals(
          MealCategoryUiState(
            status: UiStatus.success,
            categories: MockMeal.categories,
          ),
        ),
      );
    });
  });
}
