import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';

import '../../aplication.dart';

class MealToggleTab extends StatefulWidget {
  final ValueChanged<int>? onChanged;

  const MealToggleTab({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<MealToggleTab> createState() => _MealToggleTabState();
}

class _MealToggleTabState extends State<MealToggleTab> {
  late int _activeTabIndex;

  void _handleSelected(int value) {
    setState(() {
      _activeTabIndex = value;
    });

    widget.onChanged != null ? _handleChanged(value) : null;
  }

  _handleChanged(int? value) {
    widget.onChanged!(_activeTabIndex);
  }

  @override
  void initState() {
    super.initState();
    _activeTabIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return FlutterToggleTab(
      width: 60,
      borderRadius: 20,
      height: 50,
      isShadowEnable: false,
      marginSelected: const EdgeInsets.all(5),
      selectedTextStyle: const TextStyle(
        color: AppColors.white,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      unSelectedTextStyle: TextStyle(
        color: Theme.of(context).highlightColor,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      unSelectedBackgroundColors: [
        Theme.of(context).disabledColor,
        Theme.of(context).disabledColor,
      ],
      labels: const ['Ingredients', 'Instructions'],
      selectedIndex: _activeTabIndex,
      selectedLabelIndex: _handleSelected,
    );
  }
}
