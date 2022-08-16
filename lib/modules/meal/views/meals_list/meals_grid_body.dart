import 'package:flutter/material.dart';

import '../../../../application/aplication.dart';
import '../../../../domain/entities/entities.dart';

class MealsGridBody extends StatelessWidget {
  final List<MealCategoryItem> meals;

  const MealsGridBody({
    Key? key,
    required this.meals,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: silverGridDelegate,
      itemCount: meals.length,
      itemBuilder: (_, index) {
        return InkWell(
          onTap: () => navigateTo(
            _,
            routeName: AppRoutes.mealDetail,
            args: meals[index],
          ),
          child: MealGridItem(
            meal: meals[index],
          ),
        );
      },
    );
  }
}
