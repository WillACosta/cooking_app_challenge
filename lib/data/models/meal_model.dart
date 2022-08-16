import '../../domain/entities/entities.dart';

class MealModel extends Meal {
  const MealModel({
    required super.idMeal,
    required super.strMeal,
    required super.strCategory,
    required super.strArea,
    required super.strInstructions,
    required super.strMealThumb,
    required super.strYoutube,
    required super.ingredients,
    required super.measures,
  });

  factory MealModel.fromMap(Map<String, dynamic> map) {
    return MealModel(
      idMeal: map['idMeal'] ?? '',
      strMeal: map['strMeal'] ?? '',
      strCategory: map['strCategory'] ?? '',
      strArea: map['strArea'] ?? '',
      strInstructions: map['strInstructions'] ?? '',
      strMealThumb: map['strMealThumb'] ?? '',
      strYoutube: map['strYoutube'] ?? '',
      ingredients: mapToList(map, 'strIngredient'),
      measures: mapToList(map, 'strMeasure'),
    );
  }

  static List mapToList(Map<String, dynamic> map, String searchKey) {
    return map.entries
        .where((element) {
          final entry = element;
          final hasValue = entry.value != null && entry.value!.isNotEmpty;

          if (element.key.contains(searchKey) && hasValue) {
            return true;
          }

          return false;
        })
        .toList()
        .map((e) => e.value)
        .toList();
  }
}
