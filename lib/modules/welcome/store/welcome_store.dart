// ignore_for_file: library_private_types_in_public_api

import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../application/shared/shared.dart';
import 'welcome_ui_state.dart';

part 'welcome_store.g.dart';

@Injectable()
class WelcomeStore = _WelcomeStoreBase with _$WelcomeStore;

abstract class _WelcomeStoreBase with Store {
  @observable
  WelcomeUiState _state = const WelcomeUiState(status: UiStatus.initial);

  @action
  void _setState(WelcomeUiState newState) => _state = newState;

  @computed
  WelcomeUiState get state => _state;

  @computed
  bool get hasValidUserName =>
      state.userName != null && state.userName!.length >= 3;

  void setUserName(String name) {
    _setState(WelcomeUiState(
      status: UiStatus.success,
      userName: name,
    ));
  }
}
