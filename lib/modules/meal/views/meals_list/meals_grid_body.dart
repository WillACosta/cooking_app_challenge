import 'package:flutter/material.dart';

import '../../../../application/routes/routes.dart';
import '../../../../domain/entities/entities.dart';
import 'components/grid_item.dart';

class MealsGridBody extends StatelessWidget {
  final List<MealCategoryItem> meals;

  const MealsGridBody({
    Key? key,
    required this.meals,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 25,
        crossAxisSpacing: 10,
      ),
      itemCount: meals.length,
      itemBuilder: (_, index) {
        return InkWell(
          onTap: () => navigateTo(
            _,
            routeName: AppRoutes.mealDetail,
            args: meals[index],
          ),
          child: GridItem(
            meal: meals[index],
          ),
        );
      },
    );
  }
}
