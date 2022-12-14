import 'package:flutter/material.dart';

import '../../../../../application/components/components.dart';

class Greeting extends StatelessWidget {
  final String userName;

  const Greeting({
    Key? key,
    required this.userName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CText.sm(
              'Olá,',
              fontWeight: FontWeight.w300,
            ),
            CText.sm(
              userName,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
        const CookingProfile(),
      ],
    );
  }
}
