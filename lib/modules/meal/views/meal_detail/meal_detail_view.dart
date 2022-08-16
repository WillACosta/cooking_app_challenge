import 'package:flutter/material.dart';

import '../../../../application/aplication.dart';
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
  final _store = serviceLocator<MeaDetailStore>();

  bool _showInstructions = false;

  void _setShowInstructions(bool value) {
    setState(() {
      _showInstructions = value;
    });
  }

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
            // const MealSwitch(),
            Switch(
              value: _showInstructions,
              onChanged: _setShowInstructions,
            ),
            const VerticalWhiteSpace(30),
            if (_showInstructions && _store.state.status == UiStatus.success)
              Expanded(
                child: SingleChildScrollView(
                  child: CText.xxs(
                    _store.state.meal!.strInstructions,
                    overflow: TextOverflow.visible,
                  ),
                ),
              )
            else
              IngredientsList(store: _store),
          ],
        ),
      ),
    );
  }
}
