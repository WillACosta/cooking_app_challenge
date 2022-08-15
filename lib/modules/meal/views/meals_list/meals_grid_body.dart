import 'package:flutter/material.dart';

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
      itemBuilder: (context, int index) {
        return GridItem(meal: meals[index]);
      },
    );
  }
}
