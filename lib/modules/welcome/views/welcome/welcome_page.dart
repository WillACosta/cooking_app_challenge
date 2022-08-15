import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:lottie/lottie.dart';

import '../../../../application/components/components.dart';
import '../../../../application/routes/routes.dart';
import '../../../../application/utils/utils.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseViewPadding(
        child: SafeArea(
          child: Column(
            children: [
              const CText.lg(
                'Faça você \nsuas receitas de \nforma fácil',
                textAlign: TextAlign.center,
                lineHeight: 1.2,
                fontWeight: FontWeight.w600,
              ),
              const VerticalWhiteSpace(15),
              Lottie.asset(
                AppAnimations.foodMarket,
                repeat: false,
                height: 300,
              ),
              const Spacer(),
              const CText.xxs(
                'Encontre aquela deliciosa receita de\nvários locais do mundo para fazer para\n você ou sua família.',
                textAlign: TextAlign.center,
              ),
              const VerticalWhiteSpace(32),
              CButton(
                onPressed: () {
                  navigateTo(context, routeName: AppRoutes.name);
                },
                child: const Icon(FeatherIcons.chevronRight),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
