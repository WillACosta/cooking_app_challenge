import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../interfaces/interfaces.dart';
import 'aplication.dart';

class MealApp extends StatelessWidget {
  const MealApp({Key? key}) : super(key: key);

  static final _userStore = serviceLocator<UserStore>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return MaterialApp(
          title: 'Cooking App',
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: _userStore.userData.useDarkMode
              ? ThemeMode.dark
              : ThemeMode.light,
          initialRoute: AppRoutes.initial,
          onGenerateRoute: RouteGenerator.generateRoute,
        );
      },
    );
  }
}
