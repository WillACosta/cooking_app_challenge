import 'package:flutter_test/flutter_test.dart';

import 'package:cooking_home/modules/meal/store/meal_category_item/meal_category_item.dart';

import '../../../../fixtures/mock/mock.dart';

void main() {
  group('MealCategoryItemUiState', () {
    test('should supports value comparisons', () {
      expect(
        MealCategoryItemInitialState(),
        equals(
          MealCategoryItemInitialState(),
        ),
      );
    });

    test('should supports value comparisons', () {
      expect(
        MealCategoryItemLoadingState(),
        equals(
          MealCategoryItemLoadingState(),
        ),
      );
    });

    test('should supports value comparisons', () {
      expect(
        MealCategoryItemErrorState(),
        equals(
          MealCategoryItemErrorState(),
        ),
      );
    });

    test('should supports value comparisons', () {
      expect(
        MealCategoryItemSuccessState(MockMeal.mealCategoriesItem),
        equals(
          MealCategoryItemSuccessState(MockMeal.mealCategoriesItem),
        ),
      );
    });
  });
}
