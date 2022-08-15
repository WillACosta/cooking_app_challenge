import 'package:cooking_home/application/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../application/components/components.dart';
import '../../../../interfaces/dependency_injection/injection.dart';
import '../../store/welcome_store.dart';
import 'components/components.dart';

class NamePage extends StatelessWidget {
  const NamePage({Key? key}) : super(key: key);
  static final _store = serviceLocator<WelcomeStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseViewPadding(
        child: Column(
          children: [
            const VerticalWhiteSpace(32),
            const NameAnswer(),
            const VerticalWhiteSpace(40),
            CTextField(
              onChanged: _store.setUserName,
              label: 'Digite um nome',
            ),
            const VerticalWhiteSpace(40),
            Observer(
              builder: (_) {
                return CButton(
                  onPressed: _store.hasValidUserName
                      ? () => navigateTo(
                            context,
                            routeName: AppRoutes.home,
                            args: _store.state.userName,
                          )
                      : null,
                  label: 'Continuar',
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
