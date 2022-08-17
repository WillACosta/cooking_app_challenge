import 'package:flutter/material.dart';

import '../../domain/entities/entities.dart';
import '../../modules/container/container.dart';
import '../../modules/meal/views/views.dart';
import '../../modules/welcome/views/views.dart';
import '../aplication.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case AppRoutes.initial:
        return MaterialPageRoute(
          builder: (_) => const SplashView(),
        );

      case AppRoutes.welcome:
        return MaterialPageRoute(
          builder: (_) => const WelcomeView(),
        );

      case AppRoutes.name:
        return MaterialPageRoute(
          builder: (_) => const NamePage(),
        );

      case AppRoutes.home:
        return MaterialPageRoute(
          builder: (_) => const ContainerView(),
        );

      case AppRoutes.mealDetail:
        if (args is MealCategoryItem) {
          return MaterialPageRoute(
            builder: (_) => MealDetailView(meal: args),
          );
        }
        return _errorRoute();

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => const Scaffold(
        body: Center(
          child: CText.xxs('Rota não encontrada. :('),
        ),
      ),
    );
  }
}
