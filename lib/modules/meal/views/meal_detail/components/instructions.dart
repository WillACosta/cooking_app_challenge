import 'package:flutter/material.dart';

import '../../../../../application/aplication.dart';

class Instructions extends StatelessWidget {
  final String instructions;

  const Instructions({
    Key? key,
    required this.instructions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: CText.xxs(
          instructions,
          overflow: TextOverflow.visible,
        ),
      ),
    );
  }
}
