import '../../entities/entities.dart';

abstract class MealDBRepository {
  Future<List<MealCategory>> listAllMealCategories();
  Future<List<MealCategoryItem>> filterMealsByCategory(String category);
  Future<Meal> getMealByID(String id);
}
