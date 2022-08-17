import 'package:flutter/widgets.dart';

import '../../aplication.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final String? subtitle;

  const SectionHeader({
    Key? key,
    required this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CText.xxs(
          title,
          fontWeight: FontWeight.w600,
        ),
        Visibility(
          visible: subtitle != null,
          child: CText.xxxs(subtitle!),
        ),
      ],
    );
  }
}
