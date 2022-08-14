import '../../domain/entities/entities.dart';

class MealCategoryItemModel extends MealCategoryItem {
  const MealCategoryItemModel({
    required super.strMeal,
    required super.strMealThumb,
    required super.idMeal,
  });

  factory MealCategoryItemModel.fromMap(Map<String, dynamic> map) {
    return MealCategoryItemModel(
      strMeal: map['strMeal'] ?? '',
      strMealThumb: map['strMealThumb'] ?? '',
      idMeal: map['idMeal'] ?? '',
    );
  }

  static List<MealCategoryItemModel> fromJsonList(List source) {
    return source.map((e) => MealCategoryItemModel.fromMap(e)).toList();
  }
}
