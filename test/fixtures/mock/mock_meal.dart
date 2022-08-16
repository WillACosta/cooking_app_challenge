import 'package:cooking_home/data/models/models.dart';

abstract class MockMeal {
  static const fakeBaseURL = 'http://mock.api.test';

  static const mockMealCategoriesJSONKey = 'meal_categories.json';
  static const mockMealCategoriesItemJSONKey = 'meal_category_item.json';
  static const mockMealJSONKey = 'meal.json';

  static const categoryTerm = 'Chicken';
  static const filterCategoryParam = {'c': categoryTerm};

  static const fakeMealID = '1';
  static const getMealByIDParam = {'i': fakeMealID};

  static final categories = List.generate(
    3,
    (i) => MealCategoryModel(
      idCategory: '$i',
      strCategory: 'test',
      strCategoryThumb: 'test',
      strCategoryDescription: 'test',
    ),
  );

  static final mealCategoriesItem = List.generate(
    3,
    (i) => MealCategoryItemModel(
      strMeal: '$i',
      strMealThumb: 'meal test',
      idMeal: 'meal test',
    ),
  );

  static const meal = MealModel(
    idMeal: '1',
    strMeal: 'Pate Chinois',
    strCategory: 'Beef',
    strArea: 'Japan',
    strInstructions: 'Some instructions',
    strMealThumb: 'http://meal.png',
    strYoutube: 'http://youtube.com/watch',
    ingredients: [
      'meal ingredient',
      'meal ingredient',
      'meal ingredient',
      'meal ingredient',
      'meal ingredient',
      'meal ingredient',
    ],
    measures: [
      'meal measure',
      'meal measure',
      'meal measure',
      'meal measure',
      'meal measure',
      'meal measure',
    ],
  );
}
