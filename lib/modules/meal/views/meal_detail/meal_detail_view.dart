import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../application/aplication.dart';
import '../../../../domain/entities/entities.dart';
import '../../../../interfaces/interfaces.dart';
import '../../store/meal_detail/meal_detail_store.dart';
import 'components/components.dart';
import 'meal_detail_body.dart';

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
  static final _store = serviceLocator<MeaDetailStore>();

  @override
  void initState() {
    super.initState();
    _getMealByID();
  }

  _getMealByID() {
    _store.getMealByID(widget.meal.idMeal);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseViewPadding(
        child: Observer(builder: (_) {
          final state = _store.state;

          if (state.status == UiStatus.loading) {
            return const ShimmerMealDetailLayout();
          }

          if (state.status == UiStatus.success) {
            return MealDetailBody(meal: state.meal!);
          }

          if (state.status == UiStatus.failure) {
            return ErrorStateView(onPressed: _getMealByID);
          }

          return const SizedBox.shrink();
        }),
      ),
    );
  }
}
