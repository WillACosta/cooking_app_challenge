import 'package:flutter/widgets.dart';

import '../../../../../application/components/components.dart';
import '../../../../../application/utils/utils.dart';

class NameAnswer extends StatelessWidget {
  const NameAnswer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          '😊',
          style: TextStyle(fontSize: 30),
        ),
        const VerticalWhiteSpace(24),
        Text(
          'Como posso\n chamar você?',
          textAlign: TextAlign.center,
          style: AppTextStyles.head(
            color: AppColors.text,
          ),
        ),
      ],
    );
  }
}
