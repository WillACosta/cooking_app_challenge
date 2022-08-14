import 'dart:convert';

import 'package:cooking_home/data/models/models.dart';
import 'package:cooking_home/domain/entities/entities.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../fixtures/fixtures.dart';
import '../../fixtures/mock/mock.dart';

void main() {
  group('MealCategoryMapper', () {
    test('should be a subclass of MealCategory', () {
      expect(MockMeal.categories[0], isA<MealCategory>());
    });

    test('should parse JSON response to a List of MealCategoryMapper', () {
      final stringSource = fixture(MockMeal.mockMealCategoriesJSONKey);
      final responseMap = json.decode(stringSource) as Map;

      final expectedResult = MealCategoryModel.fromJsonList(
        responseMap['categories'],
      );

      expect(expectedResult, equals(MockMeal.categories));
    });
  });
}
