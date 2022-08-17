// ignore_for_file: library_private_types_in_public_api

import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../domain/entities/entities.dart';

part 'user_store.g.dart';

@singleton
class UserStore = _UserStoreBase with _$UserStore;

abstract class _UserStoreBase with Store {
  @observable
  UserData _userData = const UserData(useDarkMode: false, name: '');

  @computed
  UserData get userData => _userData;

  @action
  void _setUserData(UserData user) => _userData = user;

  @computed
  bool get hasUserName => userData.name.isNotEmpty;

  void setData({String? name, bool? useDarkMode}) {
    final data = UserData(
      name: name ?? '',
      useDarkMode: useDarkMode ?? false,
    );

    _setUserData(data);
  }
}
