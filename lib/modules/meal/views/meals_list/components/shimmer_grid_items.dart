import 'package:flutter/material.dart';

import '../../../../../application/components/components.dart';

class ShimmerGridItems extends StatelessWidget {
  const ShimmerGridItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 25,
        crossAxisSpacing: 10,
      ),
      itemCount: 10,
      itemBuilder: (_, __) {
        return Padding(
          padding: const EdgeInsets.only(right: 5),
          child: ShimmerTile.radiusSquare(
            width: 90,
            height: 100,
          ),
        );
      },
    );
  }
}
