import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../../application/shared/shared.dart';
import '../../../store/meal_detail/meal_detail_store.dart';
import 'components.dart';

class IngredientsList extends StatelessWidget {
  const IngredientsList({
    Key? key,
    required MeaDetailStore store,
  })  : _store = store,
        super(key: key);

  final MeaDetailStore _store;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Observer(
        builder: (_) {
          final state = _store.state;

          if (state.status == UiStatus.loading) {
            return const ShimmerIngredientsList();
          }

          if (state.status == UiStatus.success) {
            final ingredients = state.meal!.ingredients;
            final measures = state.meal!.measures;

            return ListView.builder(
              itemCount: ingredients.length,
              itemBuilder: ((context, index) {
                final currentIngredient = ingredients[index];
                final currentMeasure = measures[index];
                final thumbUrl =
                    '${_store.ingredientBaseURL}/$currentIngredient.png';

                return IngredientTile(
                  thumbUrl: thumbUrl,
                  title: currentIngredient,
                  measure: currentMeasure,
                );
              }),
            );
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }
}
