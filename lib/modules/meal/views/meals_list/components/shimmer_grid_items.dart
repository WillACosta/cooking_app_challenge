import 'package:flutter/material.dart';

import '../../../../../application/aplication.dart';

class ShimmerGridItems extends StatelessWidget {
  const ShimmerGridItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: silverGridDelegate,
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
