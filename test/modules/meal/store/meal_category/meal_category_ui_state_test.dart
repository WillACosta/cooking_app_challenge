import 'package:cooking_home/modules/meal/store/store.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/mock/mock.dart';

void main() {
  group('MealCategoryUiState', () {
    test('should supports value comparisons', () {
      expect(
        MealCategoryInitialState(),
        equals(
          MealCategoryInitialState(),
        ),
      );
    });

    test('should supports value comparisons', () {
      expect(
        MealCategoryLoadingState(),
        equals(
          MealCategoryLoadingState(),
        ),
      );
    });

    test('should supports value comparisons', () {
      expect(
        MealCategoryErrorState(),
        equals(
          MealCategoryErrorState(),
        ),
      );
    });

    test('should supports value comparisons', () {
      expect(
        MealCategorySuccessState(MockMeal.categories),
        equals(
          MealCategorySuccessState(MockMeal.categories),
        ),
      );
    });
  });
}
