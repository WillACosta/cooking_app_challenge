import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../application/components/components.dart';
import '../../../../application/shared/shared.dart';
import '../../../../domain/entities/entities.dart';
import '../../../../interfaces/interfaces.dart';
import '../../store/meal_detail/meal_detail_store.dart';
import '../meals_list/components/components.dart';
import 'components/components.dart';

class MealDetailView extends StatefulWidget {
  final MealCategoryItem meal;

  const MealDetailView({
    Key? key,
    required this.meal,
  }) : super(key: key);

  @override
  State<MealDetailView> createState() => _MealDetailViewState();
}

class _MealDetailViewState extends State<MealDetailView> {
  static const ingredientBaseURL =
      'https://www.themealdb.com/images/ingredients';
  final _store = serviceLocator<MeaDetailStore>();

  @override
  void initState() {
    super.initState();

    _store.getMealByID(widget.meal.idMeal);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseViewPadding(
        child: Column(
          children: [
            const HeaderActions(),
            const VerticalWhiteSpace(30),
            SizedBox.square(
              dimension: 200,
              child: GridItem(meal: widget.meal, isDetail: true),
            ),
            const VerticalWhiteSpace(45),
            Expanded(
              child: Observer(
                builder: (_) {
                  final state = _store.state;

                  if (state.status == UiStatus.loading) {
                    return const ShimmerIngredientsList();
                  }

                  if (state.status == UiStatus.success) {
                    return Column(
                      children: [
                        const IngredientTile(
                          thumbUrl: '$ingredientBaseURL/Lime-Small.png',
                          title: 'Onion',
                          measure: '1 large',
                        ),
                        const IngredientTile(
                          thumbUrl: '$ingredientBaseURL/Lime-Small.png',
                          title: 'Onion',
                          measure: '1 large',
                        ),
                        CText.xxs(state.meal!.strArea),
                      ],
                    );
                  }

                  return const SizedBox.shrink();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
