import 'package:flutter/widgets.dart';

import '../../../../../application/components/components.dart';

class NameAnswer extends StatelessWidget {
  const NameAnswer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CText.lg('😊'),
        VerticalWhiteSpace(24),
        CText.md(
          'Como posso\n chamar você?',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
