// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UserStore on _UserStoreBase, Store {
  Computed<UserData>? _$userDataComputed;

  @override
  UserData get userData =>
      (_$userDataComputed ??= Computed<UserData>(() => super.userData,
              name: '_UserStoreBase.userData'))
          .value;
  Computed<bool>? _$hasUserNameComputed;

  @override
  bool get hasUserName =>
      (_$hasUserNameComputed ??= Computed<bool>(() => super.hasUserName,
              name: '_UserStoreBase.hasUserName'))
          .value;

  late final _$_userDataAtom =
      Atom(name: '_UserStoreBase._userData', context: context);

  @override
  UserData get _userData {
    _$_userDataAtom.reportRead();
    return super._userData;
  }

  @override
  set _userData(UserData value) {
    _$_userDataAtom.reportWrite(value, super._userData, () {
      super._userData = value;
    });
  }

  late final _$_UserStoreBaseActionController =
      ActionController(name: '_UserStoreBase', context: context);

  @override
  void _setUserData(UserData user) {
    final _$actionInfo = _$_UserStoreBaseActionController.startAction(
        name: '_UserStoreBase._setUserData');
    try {
      return super._setUserData(user);
    } finally {
      _$_UserStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
userData: ${userData},
hasUserName: ${hasUserName}
    ''';
  }
}
