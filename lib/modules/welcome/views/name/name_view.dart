import 'package:flutter/material.dart';

import '../../../../application/components/components.dart';
import 'components/components.dart';

class NamePage extends StatelessWidget {
  const NamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseViewPadding(
        child: Column(
          children: const [
            VerticalWhiteSpace(32),
            NameAnswer(),
            VerticalWhiteSpace(40),
            NameForm(),
          ],
        ),
      ),
    );
  }
}
