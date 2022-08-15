import 'package:flutter/material.dart';

import '../../../../../application/components/components.dart';

class CategorySelectText extends StatelessWidget {
  const CategorySelectText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        CText.xxs(
          'O que vamos fazer hoje?',
          fontWeight: FontWeight.w600,
        ),
        CText.xxxs('Você pode escolher uma das categorias abaixo.'),
      ],
    );
  }
}
