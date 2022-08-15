import 'package:flutter/material.dart';

import 'routes/routes.dart';
import 'utils/utils.dart';

class MealApp extends StatelessWidget {
  const MealApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cooking App',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      initialRoute: AppRoutes.initial,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
