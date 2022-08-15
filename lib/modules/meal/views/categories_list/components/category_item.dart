import 'package:flutter/material.dart';

import '../../../../../application/components/components.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String description;
  final bool isSelected;
  final ValueChanged<bool>? onSelected;

  const CategoryItem({
    Key? key,
    required this.id,
    required this.description,
    this.isSelected = false,
    this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: CText.xxs(
        description,
        fontWeight: isSelected ? FontWeight.w500 : FontWeight.normal,
      ),
      selected: isSelected,
      onSelected: onSelected,
    );
  }
}
