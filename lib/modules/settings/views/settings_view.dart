import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../application/aplication.dart';
import '../../../interfaces/interfaces.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  static final _store = serviceLocator<UserStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseViewPadding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const VerticalWhiteSpace(30),
            Column(
              children: [
                const CookingProfile(),
                const VerticalWhiteSpace(10),
                Observer(
                  builder: (_) {
                    return CText.xxs(
                      _store.userData.name,
                      fontWeight: FontWeight.bold,
                      color: _store.userData.useDarkMode
                          ? AppColors.white
                          : AppColors.text,
                    );
                  },
                ),
              ],
            ),
            const VerticalWhiteSpace(12),
            const SectionHeader(
              title: 'Configurações',
              subtitle: 'Aqui você pode mudar as configurações do seu app.',
            ),
            const VerticalWhiteSpace(35),
            Observer(
              builder: (_) => PlatformSwitchListButton(
                label: 'Usar dark mode',
                value: _store.userData.useDarkMode,
                semanticsLabel: 'Dark mode switch button',
                onChanged: (value) => _store.setData(
                  name: _store.userData.name,
                  useDarkMode: value,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
