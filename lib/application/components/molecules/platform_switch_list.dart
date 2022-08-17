import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../aplication.dart';

class PlatformSwitchListButton extends PlatformWidget<Widget, Widget> {
  const PlatformSwitchListButton({
    Key? key,
    required this.label,
    required this.value,
    this.onChanged,
    this.semanticsLabel,
  }) : super(key: key);

  final String label;
  final bool value;
  final Function(bool)? onChanged;
  final String? semanticsLabel;

  @override
  Widget createIosWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: AppTextStyles.body(),
            semanticsLabel: semanticsLabel,
          ),
          CupertinoSwitch(
            value: value,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }

  @override
  Widget createAndroidWidget(BuildContext context) {
    return SwitchListTile(
      value: value,
      contentPadding: const EdgeInsets.all(0),
      onChanged: onChanged,
      activeTrackColor: AppColors.secondary,
      activeColor: AppColors.primary,
      title: CText.xxs(label),
    );
  }
}
