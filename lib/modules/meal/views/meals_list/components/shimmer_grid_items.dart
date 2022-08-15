import 'package:flutter/material.dart';

import '../../../../../application/components/components.dart';

class ShimmerGridItems extends StatelessWidget {
  const ShimmerGridItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
      ),
      itemCount: 10,
      itemBuilder: (_, __) {
        return Column(
          children: [
            ShimmerTile.radiusSquare(
              width: 120,
              height: 120,
            ),
            const VerticalWhiteSpace(5),
            ShimmerTile.radiusSquare(
              width: 100,
              height: 10,
              radius: 4,
            ),
          ],
        );
      },
    );
  }
}
