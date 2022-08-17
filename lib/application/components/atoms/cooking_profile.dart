import 'package:flutter/widgets.dart';

import '../../aplication.dart';

class CookingProfile extends StatelessWidget {
  const CookingProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}
