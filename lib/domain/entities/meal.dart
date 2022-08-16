import 'package:equatable/equatable.dart';

class Meal extends Equatable {
  final String idMeal;
  final String strMeal;
  final String strCategory;
  final String strArea;
  final String strInstructions;
  final String strMealThumb;
  final String strYoutube;
  final List<dynamic> ingredients;
  final List<dynamic> measures;

  const Meal({
    required this.idMeal,
    required this.strMeal,
    required this.strCategory,
    required this.strArea,
    required this.strInstructions,
    required this.strMealThumb,
    required this.strYoutube,
    required this.ingredients,
    required this.measures,
  });

  @override
  List<Object?> get props => [
        idMeal,
        strMeal,
        strCategory,
        strArea,
        strInstructions,
        strMealThumb,
        strYoutube,
        ingredients,
        measures,
      ];
}
