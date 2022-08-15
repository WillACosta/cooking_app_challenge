import 'package:flutter/material.dart';

import '../../../../../application/components/components.dart';
import '../../../../../domain/entities/entities.dart';

class GridItem extends StatelessWidget {
  final MealCategoryItem meal;

  const GridItem({
    Key? key,
    required this.meal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(meal.strMealThumb),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 4),
          child: CText.xxxs(meal.strMeal),
        ),
      ],
    );
  }
}
