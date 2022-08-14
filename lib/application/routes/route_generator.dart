import 'package:flutter/material.dart';

import '../../modules/meal/views/views.dart';
import '../../modules/welcome/views/views.dart';

import 'app_routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case AppRoutes.initial:
        return MaterialPageRoute(
          builder: (_) => const WelcomePage(),
        );

      case AppRoutes.welcome:
        return MaterialPageRoute(
          builder: (_) => const WelcomePage(),
        );

      case AppRoutes.name:
        return MaterialPageRoute(
          builder: (_) => const NamePage(),
        );

      case AppRoutes.home:
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => HomeView(userName: args),
          );
        }
        return _errorRoute();

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) => Container());
  }
}
