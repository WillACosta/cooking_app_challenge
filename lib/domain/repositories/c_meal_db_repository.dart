import 'package:injectable/injectable.dart';

import '../../core/errors/domain_failures.dart';
import '../../data/data_sources/meal_db_data_source.dart';
import '../entities/entities.dart';
import 'meal_db_repository.dart';

@Injectable(as: MealDBRepository)
class CMealDBRepository implements MealDBRepository {
  final MealDBDataSource _dataSource;

  CMealDBRepository(this._dataSource);

  @override
  Future<List<MealCategory>> listAllMealCategories() async {
    try {
      return await _dataSource.listAllMealCategories();
    } on Exception {
      throw MealRepositoryFailure();
    }
  }

  @override
  Future<List<MealCategoryItem>> filterMealsByCategory(String category) async {
    try {
      return await _dataSource.filterMealsByCategory(category);
    } on Exception {
      throw MealRepositoryFailure();
    }
  }

  @override
  Future<Meal> getMealByID(String id) async {
    try {
      return await _dataSource.getMealByID(id);
    } on Exception {
      throw MealRepositoryFailure();
    }
  }
}
