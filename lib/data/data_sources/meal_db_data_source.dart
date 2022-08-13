import '../../domain/entities/entitiens.dart';

abstract class MealDBDataSource {
  Future<List<MealCategory>> listAllMealCategories();
}
