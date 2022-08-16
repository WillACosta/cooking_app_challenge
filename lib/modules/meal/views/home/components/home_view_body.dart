import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../../application/shared/shared.dart';
import '../../../../../interfaces/dependency_injection/injection.dart';
import '../../../../../application/components/components.dart';
import '../../../store/meal_category_item/meal_category_item.dart';
import '../../categories_list/categories_list.dart';
import '../../meals_list/components/components.dart';
import '../../meals_list/meals_list.dart';
import 'components.dart';

class HomeViewBody extends StatefulWidget {
  final String userName;

  const HomeViewBody({
    Key? key,
    required this.userName,
  }) : super(key: key);

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  final _store = serviceLocator<MealCategoryItemStore>();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Greeting(userName: widget.userName),
        const VerticalWhiteSpace(32),
        const CategorySelectText(),
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

              return const SizedBox.shrink();
            },
          ),
        ),
      ],
    );
  }
}
