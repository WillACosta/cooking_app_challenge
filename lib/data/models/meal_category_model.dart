import '../../domain/entities/entities.dart';

class MealCategoryModel extends MealCategory {
  const MealCategoryModel({
    required super.idCategory,
    required super.strCategory,
    required super.strCategoryThumb,
    required super.strCategoryDescription,
  });

  factory MealCategoryModel.fromMap(Map<String, dynamic> map) {
    return MealCategoryModel(
      idCategory: map['idCategory'] ?? '',
      strCategory: map['strCategory'] ?? '',
      strCategoryThumb: map['strCategoryThumb'] ?? '',
      strCategoryDescription: map['strCategoryDescription'] ?? '',
    );
  }

  static List<MealCategoryModel> fromJsonList(List source) {
    return source.map((e) => MealCategoryModel.fromMap(e)).toList();
  }
}
