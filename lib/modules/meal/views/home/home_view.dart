import 'package:flutter/material.dart';

import '../../../../application/components/components.dart';
import 'components/components.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BaseViewPadding(
        child: HomeViewBody(),
      ),
    );
  }
}
