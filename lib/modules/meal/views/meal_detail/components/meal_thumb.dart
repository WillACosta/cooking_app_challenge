import 'package:flutter/material.dart';

import '../../../../../application/aplication.dart';
import '../../../../../domain/entities/entities.dart';

class MealThumb extends StatelessWidget {
  final Meal meal;

  const MealThumb({
    Key? key,
    required this.meal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 200,
      child: MealGridItem(
        description: meal.strMeal,
        imageUrl: meal.strMealThumb,
        isDetail: true,
      ),
    );
  }
}
