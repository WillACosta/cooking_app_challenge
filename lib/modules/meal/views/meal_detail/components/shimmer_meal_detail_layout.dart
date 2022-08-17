import 'package:flutter/material.dart';

import '../../../../../application/aplication.dart';
import 'shimmer_ingredients_list.dart';

class ShimmerMealDetailLayout extends StatelessWidget {
  const ShimmerMealDetailLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalWhiteSpace(30),
        ShimmerTile.radiusSquare(
          width: 150,
          height: 150,
        ),
        const VerticalWhiteSpace(10),
        ShimmerTile.radiusSquare(
          width: 150,
          height: 20,
          radius: 4,
        ),
        const VerticalWhiteSpace(40),
        ShimmerTile.radiusSquare(
          width: 250,
          height: 45,
          radius: 25,
        ),
        const VerticalWhiteSpace(40),
        const Expanded(
          child: ShimmerIngredientsList(),
        ),
      ],
    );
  }
}
