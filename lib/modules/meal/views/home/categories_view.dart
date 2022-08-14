import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../interfaces/interfaces.dart';
import '../../store/store.dart';
import 'components/components.dart';

class CategoriesView extends StatefulWidget {
  const CategoriesView({Key? key}) : super(key: key);

  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  final _store = serviceLocator<MealCategoryStore>();

  int? _selectedCategoryIndex = 0;

  void _handleSelectCategory(bool value, int index) {
    setState(() {
      _selectedCategoryIndex = value ? index : null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      final state = _store.state;

      if (state is MealCategoryErrorState) {
        return Container();
      }

      if (state is MealCategorySuccessState) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: state.categories.length,
          itemBuilder: ((context, index) {
            final item = state.categories[index];

            return Padding(
              padding: const EdgeInsets.only(right: 5),
              child: CategoryItem(
                id: item.idCategory,
                description: item.strCategory,
                isSelected: _selectedCategoryIndex == index,
                onSelected: (value) => _handleSelectCategory(value, index),
              ),
            );
          }),
        );
      }

      return const ShimmerCategoriesList();
    });
  }
}
