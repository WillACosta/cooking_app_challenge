import 'package:flutter_test/flutter_test.dart';

import 'package:cooking_home/domain/entities/entities.dart';

void main() {
  group('Meal', () {
    test('should supports value comparisons', () {
      expect(
        const Meal(
          idMeal: '1',
          strMeal: 'Pate Chinois',
          strCategory: 'Beef',
          strArea: 'Japan',
          strInstructions: 'Some instruction',
          strMealThumb: 'http://meal.png',
          strYoutube: 'http://youtube.com/watch',
          ingredients: [],
          measures: [],
        ),
        equals(
          const Meal(
            idMeal: '1',
            strMeal: 'Pate Chinois',
            strCategory: 'Beef',
            strArea: 'Japan',
            strInstructions: 'Some instruction',
            strMealThumb: 'http://meal.png',
            strYoutube: 'http://youtube.com/watch',
            ingredients: [],
            measures: [],
          ),
        ),
      );
    });
  });
}
