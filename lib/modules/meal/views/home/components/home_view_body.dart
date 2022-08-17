import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../../application/components/components.dart';
import '../../../../../application/shared/shared.dart';
import '../../../../../interfaces/dependency_injection/injection.dart';
import '../../../store/meal_category_item/meal_category_item.dart';
import '../../categories_list/categories_list.dart';
import '../../meals_list/components/components.dart';
import '../../meals_list/meals_list.dart';
import 'components.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  final _store = serviceLocator<MealCategoryItemStore>();
  final _userStore = serviceLocator<UserStore>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Observer(builder: (_) {
          final userName = _userStore.userData.name;
          return Greeting(userName: userName);
        }),
        const VerticalWhiteSpace(32),
        const SectionHeader(
          title: 'O que vamos fazer hoje?',
          subtitle: 'Você pode escolher uma das categorias abaixo.',
        ),
        const VerticalWhiteSpace(25),
        const SizedBox(
          height: 50,
          child: CategoriesView(),
        ),
        const VerticalWhiteSpace(32),
        Expanded(
          child: Observer(
            builder: (_) {
              final state = _store.state;

              if (state.status == UiStatus.loading) {
                return const ShimmerGridItems();
              }

              if (state.status == UiStatus.success) {
                return MealsGridBody(meals: state.meals);
              }

              if (state.status == UiStatus.failure) {
                return ErrorStateView(
                  onPressed: () => _store.getAllMealsByCategoryName(
                    _store.currentCategoryName,
                  ),
                );
              }

              return const SizedBox.shrink();
            },
          ),
        ),
      ],
    );
  }
}
