import 'package:flutter/material.dart';

import '../../../../../application/aplication.dart';
import '../../../../../domain/entities/entities.dart';
import 'components.dart';

class IngredientsList extends StatelessWidget {
  final Meal meal;

  const IngredientsList({
    Key? key,
    required this.meal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: meal.ingredients.length,
        itemBuilder: ((context, index) {
          try {
            final currentIngredient = meal.ingredients[index];
            final currentMeasure = meal.measures[index];
            final thumbUrl = '$ingredientImageBaseURL/$currentIngredient.png';

            return IngredientTile(
              thumbUrl: thumbUrl,
              title: currentIngredient,
              measure: currentMeasure,
            );
          } catch (_) {
            return const SizedBox.shrink();
          }
        }),
      ),
    );
  }
}
