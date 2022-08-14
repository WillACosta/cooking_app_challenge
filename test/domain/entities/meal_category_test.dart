import 'package:cooking_home/domain/entities/entities.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MealCategory', () {
    test('should supports value comparisons', () {
      expect(
        const MealCategory(
          idCategory: '1',
          strCategory: 'Meal Test',
          strCategoryDescription: 'Meal Test Description',
          strCategoryThumb: 'Meal Test Thumb',
        ),
        equals(
          const MealCategory(
            idCategory: '1',
            strCategory: 'Meal Test',
            strCategoryDescription: 'Meal Test Description',
            strCategoryThumb: 'Meal Test Thumb',
          ),
        ),
      );
    });
  });
}
