import 'package:flutter/material.dart';

import '../../../../../application/components/components.dart';
import '../../../../../domain/entities/entities.dart';

class MealGridItem extends StatelessWidget {
  final MealCategoryItem meal;
  final bool isDetail;

  const MealGridItem({
    Key? key,
    required this.meal,
    this.isDetail = false,
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
          padding: const EdgeInsets.only(top: 15),
          child: isDetail
              ? CText.xs(
                  meal.strMeal,
                  fontWeight: FontWeight.bold,
                )
              : CText.xxxs(meal.strMeal),
        ),
      ],
    );
  }
}
