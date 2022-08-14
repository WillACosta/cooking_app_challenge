import 'package:flutter/material.dart';

import '../../../../../application/components/components.dart';

class ShimmerCategoriesList extends StatelessWidget {
  const ShimmerCategoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5));

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 6,
      itemBuilder: (((context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 5),
          child: ShimmerTile.radiusSquare(width: 90, height: 100),
        );
      })),
    );
  }
}
