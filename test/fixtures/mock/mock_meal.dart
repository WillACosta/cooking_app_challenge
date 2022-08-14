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
    strMeal: 'meal test',
    strDrinkAlternate: 'meal test',
    strCategory: 'meal test',
    strArea: 'meal test',
    strInstructions: 'meal test',
    strMealThumb: 'meal test',
    strTags: 'meal test',
    strYoutube: 'meal test',
    strIngredient1: 'meal test',
    strIngredient2: 'meal test',
    strIngredient3: 'meal test',
    strIngredient4: 'meal test',
    strIngredient5: 'meal test',
    strIngredient6: 'meal test',
    strIngredient7: 'meal test',
    strIngredient8: 'meal test',
    strIngredient9: 'meal test',
    strIngredient10: 'meal test',
    strIngredient11: 'meal test',
    strIngredient12: 'meal test',
    strIngredient13: 'meal test',
    strIngredient14: 'meal test',
    strIngredient15: 'meal test',
    strIngredient16: 'meal test',
    strIngredient17: 'meal test',
    strIngredient18: 'meal test',
    strIngredient19: 'meal test',
    strIngredient20: 'meal test',
    strMeasure1: 'meal test',
    strMeasure2: 'meal test',
    strMeasure3: 'meal test',
    strMeasure4: 'meal test',
    strMeasure5: 'meal test',
    strMeasure6: 'meal test',
    strMeasure7: 'meal test',
    strMeasure8: 'meal test',
    strMeasure9: 'meal test',
    strMeasure10: 'meal test',
    strMeasure11: 'meal test',
    strMeasure12: 'meal test',
    strMeasure13: 'meal test',
    strMeasure14: 'meal test',
    strMeasure15: 'meal test',
    strMeasure16: 'meal test',
    strMeasure17: 'meal test',
    strMeasure18: 'meal test',
    strMeasure19: 'meal test',
    strMeasure20: 'meal test',
    strSource: 'meal test',
    strImageSource: 'meal test',
    strCreativeCommonsConfirmed: 'meal test',
    dateModified: 'meal test',
  );
}
