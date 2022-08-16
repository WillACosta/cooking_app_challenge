import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../application/aplication.dart';
import '../../../../application/shared/shared.dart';

import '../../../../domain/entities/entities.dart';
import '../../../../interfaces/interfaces.dart';
import '../../store/meal_category_item/meal_category_item.dart';
import '../../store/store.dart';
import 'components/components.dart';

class CategoriesView extends StatefulWidget {
  const CategoriesView({Key? key}) : super(key: key);

  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  final _store = serviceLocator<MealCategoryStore>();
  final _mealItemStore = serviceLocator<MealCategoryItemStore>();

  int? _selectedCategoryIndex = 0;

  @override
  void didChangeDependencies() {
    _store.getAllCategories();
    _mealItemStore.getAllMealsByCategoryName('Beef');

    super.didChangeDependencies();
  }

  void _handleSelectCategory(
    bool value,
    int index,
    MealCategory category,
  ) {
    setState(() {
      _selectedCategoryIndex = value ? index : null;
    });

    _mealItemStore.getAllMealsByCategoryName(category.strCategory);
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      final state = _store.state;

      if (state.status == UiStatus.initial) {
        return Container();
      }

      if (state.status == UiStatus.failure) {
        ReloadCategories(onPressed: _store.getAllCategories);
      }

      if (state.status == UiStatus.success) {
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
                onSelected: (value) => _handleSelectCategory(
                  value,
                  index,
                  item,
                ),
              ),
            );
          }),
        );
      }

      return const ShimmerCategoriesList();
    });
  }
}
