// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'name_form_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NameFormStore on _NameFormStoreBase, Store {
  Computed<bool>? _$validComputed;

  @override
  bool get valid => (_$validComputed ??=
          Computed<bool>(() => super.valid, name: '_NameFormStoreBase.valid'))
      .value;

  late final _$nameAtom =
      Atom(name: '_NameFormStoreBase.name', context: context);

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  late final _$_NameFormStoreBaseActionController =
      ActionController(name: '_NameFormStoreBase', context: context);

  @override
  void setName(String value) {
    final _$actionInfo = _$_NameFormStoreBaseActionController.startAction(
        name: '_NameFormStoreBase.setName');
    try {
      return super.setName(value);
    } finally {
      _$_NameFormStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clear() {
    final _$actionInfo = _$_NameFormStoreBaseActionController.startAction(
        name: '_NameFormStoreBase.clear');
    try {
      return super.clear();
    } finally {
      _$_NameFormStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateName(String value) {
    final _$actionInfo = _$_NameFormStoreBaseActionController.startAction(
        name: '_NameFormStoreBase.validateName');
    try {
      return super.validateName(value);
    } finally {
      _$_NameFormStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setError({String? message}) {
    final _$actionInfo = _$_NameFormStoreBaseActionController.startAction(
        name: '_NameFormStoreBase.setError');
    try {
      return super.setError(message: message);
    } finally {
      _$_NameFormStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
valid: ${valid}
    ''';
  }
}

mixin _$NameFormErrorState on _NameFormErrorState, Store {
  Computed<bool>? _$hasNameErrorComputed;

  @override
  bool get hasNameError =>
      (_$hasNameErrorComputed ??= Computed<bool>(() => super.hasNameError,
              name: '_NameFormErrorState.hasNameError'))
          .value;

  late final _$nameAtom =
      Atom(name: '_NameFormErrorState.name', context: context);

  @override
  String? get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String? value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  late final _$_NameFormErrorStateActionController =
      ActionController(name: '_NameFormErrorState', context: context);

  @override
  void setNameError(String? error) {
    final _$actionInfo = _$_NameFormErrorStateActionController.startAction(
        name: '_NameFormErrorState.setNameError');
    try {
      return super.setNameError(error);
    } finally {
      _$_NameFormErrorStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearAll() {
    final _$actionInfo = _$_NameFormErrorStateActionController.startAction(
        name: '_NameFormErrorState.clearAll');
    try {
      return super.clearAll();
    } finally {
      _$_NameFormErrorStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
hasNameError: ${hasNameError}
    ''';
  }
}
