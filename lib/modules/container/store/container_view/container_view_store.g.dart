// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'container_view_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ContainerViewStore on _ContainerViewStoreBase, Store {
  Computed<dynamic>? _$currentPageComputed;

  @override
  dynamic get currentPage =>
      (_$currentPageComputed ??= Computed<dynamic>(() => super.currentPage,
              name: '_ContainerViewStoreBase.currentPage'))
          .value;

  late final _$_currentPageAtom =
      Atom(name: '_ContainerViewStoreBase._currentPage', context: context);

  @override
  int get _currentPage {
    _$_currentPageAtom.reportRead();
    return super._currentPage;
  }

  @override
  set _currentPage(int value) {
    _$_currentPageAtom.reportWrite(value, super._currentPage, () {
      super._currentPage = value;
    });
  }

  late final _$_ContainerViewStoreBaseActionController =
      ActionController(name: '_ContainerViewStoreBase', context: context);

  @override
  void setCurrentPage(int value) {
    final _$actionInfo = _$_ContainerViewStoreBaseActionController.startAction(
        name: '_ContainerViewStoreBase.setCurrentPage');
    try {
      return super.setCurrentPage(value);
    } finally {
      _$_ContainerViewStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentPage: ${currentPage}
    ''';
  }
}
