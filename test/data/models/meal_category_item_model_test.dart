import 'dart:convert';

import 'package:cooking_home/data/models/models.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../fixtures/fixtures.dart';
import '../../fixtures/mock/mock.dart';

void main() {
  group('MealCategoryItemModel', () {
    test('should be a subclass of MealCategoryItem', () {
      expect(MockMeal.mealCategoriesItem[0], isA<MealCategoryItemModel>());
    });

    test('should parse JSON response to a List of MealCategoryItem', () {
      final stringSource = fixture(MockMeal.mockMealCategoriesItemJSONKey);
      final responseMap = json.decode(stringSource) as Map;

      final expectedResult = MealCategoryItemModel.fromJsonList(
        responseMap['meals'],
      );

      expect(expectedResult, equals(MockMeal.mealCategoriesItem));
    });
  });
}
