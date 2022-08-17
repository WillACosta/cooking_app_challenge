import '../../../domain/entities/entities.dart';

abstract class MealDBDataSource {
  Future<List<MealCategory>> listAllMealCategories();
  Future<List<MealCategoryItem>> filterMealsByCategory(String category);
  Future<Meal> getMealByID(String id);
}
