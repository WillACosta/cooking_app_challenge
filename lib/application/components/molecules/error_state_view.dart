import 'package:flutter/material.dart';

import '../components.dart';

class ErrorStateView extends StatelessWidget {
  final VoidCallback onPressed;

  const ErrorStateView({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          const VerticalWhiteSpace(35),
          const CText.xxs('Oops! Aconteceu alguma coisa...'),
          const VerticalWhiteSpace(5),
          const CText.xxxs('Que tal tentar recarregar?'),
          RefreshButton(onPressed: onPressed),
        ],
      ),
    );
  }
}
