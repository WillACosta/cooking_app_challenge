import 'package:flutter/material.dart';

import '../../../../../application/components/components.dart';

class ShimmerIngredientsList extends StatelessWidget {
  const ShimmerIngredientsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (_, __) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Row(
            children: [
              ShimmerTile.radiusSquare(
                width: 120,
                height: 25,
                radius: 4,
              ),
              const SizedBox(width: 15),
              Expanded(
                child: ShimmerTile.radiusSquare(
                  width: double.infinity,
                  height: 25,
                  radius: 4,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
