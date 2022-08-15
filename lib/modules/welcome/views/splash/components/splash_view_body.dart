import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../../application/routes/routes.dart';
import '../../../../../application/utils/utils.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 4), () {
      navigateTo(context, routeName: AppRoutes.welcome);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            AppAnimations.loadingFood,
            repeat: true,
            width: 150,
          ),
        ],
      ),
    );
  }
}
