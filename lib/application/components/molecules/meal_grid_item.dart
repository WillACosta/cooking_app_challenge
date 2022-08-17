import 'package:flutter/material.dart';

import '../../../../../application/components/components.dart';

class MealGridItem extends StatelessWidget {
  final String imageUrl;
  final String description;
  final bool isDetail;

  const MealGridItem({
    Key? key,
    this.isDetail = false,
    required this.imageUrl,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(imageUrl),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 15),
          child: isDetail
              ? CText.xs(
                  description,
                  fontWeight: FontWeight.bold,
                )
              : CText.xxxs(description),
        ),
      ],
    );
  }
}
