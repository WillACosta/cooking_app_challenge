import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../components.dart';

class MealSwitch extends StatefulWidget {
  final VoidCallback? onTap;
  final bool value;

  const MealSwitch({
    Key? key,
    this.onTap,
    this.value = false,
  }) : super(key: key);

  @override
  State<MealSwitch> createState() => _MealSwitchState();
}

class _MealSwitchState extends State<MealSwitch> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: 250,
        height: 50,
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 5,
              left: 8,
              child: Container(
                height: 40,
                width: 120,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AppColors.primary,
                ),
                child: const CText.xxs(
                  'Ingredients',
                  color: AppColors.white,
                ),
              ),
            ),
            Positioned(
              top: 5,
              right: 8,
              child: Container(
                height: 40,
                width: 120,
                alignment: Alignment.center,
                child: const CText.xxs(
                  'Instructions',
                  color: AppColors.text,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
