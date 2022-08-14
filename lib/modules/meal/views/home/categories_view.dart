import 'package:flutter/material.dart';

import 'components/components.dart';

class CategoriesView extends StatefulWidget {
  const CategoriesView({Key? key}) : super(key: key);

  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  int? _selectedCategoryIndex = 0;

  void _handleSelectCategory(bool value, int index) {
    setState(() {
      _selectedCategoryIndex = value ? index : null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 8,
      itemBuilder: ((context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 5),
          child: CategoryItem(
            id: '1',
            description: 'name',
            isSelected: _selectedCategoryIndex == index,
            onSelected: (value) => _handleSelectCategory(value, index),
          ),
        );
      }),
    );
  }
}
