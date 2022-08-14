import 'package:cooking_home/modules/meal/views/home/categories_view.dart';
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Greeting(userName: userName),
            const VerticalWhiteSpace(32),
            const CategorySelectText(),
            const VerticalWhiteSpace(25),
            const SizedBox(
              height: 50,
              child: CategoriesView(),
            ),
          ],
        ),
      ),
    );
  }
}
