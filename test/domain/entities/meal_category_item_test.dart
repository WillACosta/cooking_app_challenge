import 'package:flutter_test/flutter_test.dart';

import 'package:cooking_home/domain/entities/entities.dart';

void main() {
  group('MealCategoryItem', () {
    test('should supports value comparisons', () {
      expect(
        const MealCategoryItem(
          idMeal: '1',
          strMeal: 'Meal Test',
          strMealThumb: 'Meal Image',
        ),
        equals(
          const MealCategoryItem(
            idMeal: '1',
            strMeal: 'Meal Test',
            strMealThumb: 'Meal Image',
          ),
        ),
      );
    });
  });
}
