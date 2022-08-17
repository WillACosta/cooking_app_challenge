// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'container_view_store.g.dart';

@singleton
class ContainerViewStore = _ContainerViewStoreBase with _$ContainerViewStore;

abstract class _ContainerViewStoreBase with Store {
  @observable
  int _currentPage = 0;

  @action
  void setCurrentPage(int value) => _currentPage = value;

  @computed
  get currentPage => _currentPage;

  final pageController = PageController(initialPage: 0);

  void toPage(int pageIndex) {
    pageController.animateToPage(
      pageIndex,
      duration: const Duration(milliseconds: 200),
      curve: Curves.ease,
    );

    setCurrentPage(pageIndex);
  }
}
