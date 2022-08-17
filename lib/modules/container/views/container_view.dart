import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../application/aplication.dart';
import '../../../interfaces/interfaces.dart';
import '../../meal/views/views.dart';
import '../../settings/settings.dart';
import '../store/store.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({Key? key}) : super(key: key);

  static final _store = serviceLocator<ContainerViewStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView(
        controller: _store.pageController,
        onPageChanged: _store.setCurrentPage,
        children: const [
          HomeView(),
          SettingsPage(),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
        ),
        child: SafeArea(
          top: false,
          child: Observer(
            builder: (_) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () => _store.toPage(0),
                    icon: const Icon(FeatherIcons.home),
                    color: _store.currentPage == 0
                        ? Theme.of(context).primaryColor
                        : AppColors.secondaryText,
                  ),
                  IconButton(
                    onPressed: () => _store.toPage(1),
                    icon: const Icon(FeatherIcons.settings),
                    color: _store.currentPage == 1
                        ? Theme.of(context).primaryColor
                        : AppColors.secondaryText,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
