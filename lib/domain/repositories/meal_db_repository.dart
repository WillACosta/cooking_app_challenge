import '../entities/entitiens.dart';

abstract class MealDBRepository {
  Future<List<MealCategory>> listAllMealCategories();
}
