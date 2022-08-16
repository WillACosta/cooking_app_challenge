import 'dart:convert';

import 'package:cooking_home/data/models/models.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../fixtures/fixtures.dart';
import '../../fixtures/mock/mock.dart';

void main() {
  group('MealModel', () {
    test('should be a subclass of Meal', () {
      expect(MockMeal.meal, isA<MealModel>());
    });

    test('should parse JSON response to a Meal', () {
      final stringSource = fixture(MockMeal.mockMealJSONKey);
      final responseMap = json.decode(stringSource) as Map<String, dynamic>;

      final expectedResult = MealModel.fromMap(responseMap['meals'][0]);

      expect(expectedResult, equals(MockMeal.meal));
    });
  });
}
