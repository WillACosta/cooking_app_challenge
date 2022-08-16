import 'package:flutter/material.dart';

import '../../../../../application/aplication.dart';

class ReloadCategories extends StatelessWidget {
  final VoidCallback onPressed;

  const ReloadCategories({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CText.xxs(
          'Oops! Tivemos um problema...\nQue tal tentar recarregar?',
        ),
        RefreshButton(onPressed: onPressed),
      ],
    );
  }
}
