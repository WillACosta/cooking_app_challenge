import '../entities/entities.dart';

abstract class MealDBRepository {
  Future<List<MealCategory>> listAllMealCategories();
}
