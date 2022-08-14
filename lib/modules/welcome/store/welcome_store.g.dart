// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'welcome_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$WelcomeStore on _WelcomeStoreBase, Store {
  Computed<WelcomeUiState>? _$stateComputed;

  @override
  WelcomeUiState get state =>
      (_$stateComputed ??= Computed<WelcomeUiState>(() => super.state,
              name: '_WelcomeStoreBase.state'))
          .value;
  Computed<bool>? _$hasValidUserNameComputed;

  @override
  bool get hasValidUserName => (_$hasValidUserNameComputed ??= Computed<bool>(
          () => super.hasValidUserName,
          name: '_WelcomeStoreBase.hasValidUserName'))
      .value;

  late final _$_stateAtom =
      Atom(name: '_WelcomeStoreBase._state', context: context);

  @override
  WelcomeUiState get _state {
    _$_stateAtom.reportRead();
    return super._state;
  }

  @override
  set _state(WelcomeUiState value) {
    _$_stateAtom.reportWrite(value, super._state, () {
      super._state = value;
    });
  }

  late final _$_WelcomeStoreBaseActionController =
      ActionController(name: '_WelcomeStoreBase', context: context);

  @override
  void _setState(WelcomeUiState newState) {
    final _$actionInfo = _$_WelcomeStoreBaseActionController.startAction(
        name: '_WelcomeStoreBase._setState');
    try {
      return super._setState(newState);
    } finally {
      _$_WelcomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
state: ${state},
hasValidUserName: ${hasValidUserName}
    ''';
  }
}
