import 'package:flutter/material.dart';

import '../../../../application/components/components.dart';
import 'components/components.dart';

class HomeView extends StatelessWidget {
  final String userName;

  const HomeView({
    Key? key,
    required this.userName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseViewPadding(
        child: HomeViewBody(userName: userName),
      ),
    );
  }
}
