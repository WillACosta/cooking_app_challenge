import 'package:cooking_home/data/models/models.dart';

abstract class MockMeal {
  static const baseURL = 'https://www.themealdb.com/api/json/v1/1';
  static const mockMealCategoriesJSONKey = 'meal_categories.json';

  static final categories = List.generate(
    3,
    (i) => MealCategoryModel(
      idCategory: '$i',
      strCategory: 'test',
      strCategoryThumb: 'test',
      strCategoryDescription: 'test',
    ),
  );
}
