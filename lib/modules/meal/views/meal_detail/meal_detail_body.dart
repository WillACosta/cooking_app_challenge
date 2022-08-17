import 'package:flutter/material.dart';

import '../../../../application/aplication.dart';
import '../../../../domain/entities/entities.dart';
import 'components/components.dart';

class MealDetailBody extends StatefulWidget {
  final Meal meal;

  const MealDetailBody({
    Key? key,
    required this.meal,
  }) : super(key: key);

  @override
  State<MealDetailBody> createState() => _MealDetailBodyState();
}

class _MealDetailBodyState extends State<MealDetailBody> {
  late int _activeTabIndex;

  void _handleSelected(int value) {
    setState(() {
      _activeTabIndex = value;
    });
  }

  @override
  void initState() {
    super.initState();
    _activeTabIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeaderActions(),
        const VerticalWhiteSpace(30),
        MealThumb(meal: widget.meal),
        const VerticalWhiteSpace(45),
        MealToggleTab(onChanged: _handleSelected),
        const VerticalWhiteSpace(30),
        if (_activeTabIndex == 1)
          Instructions(instructions: widget.meal.strInstructions)
        else
          IngredientsList(meal: widget.meal)
      ],
    );
  }
}
