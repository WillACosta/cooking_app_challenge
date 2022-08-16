// ignore_for_file: library_private_types_in_public_api

import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
part 'name_form_store.g.dart';

@injectable
class NameFormStore = _NameFormStoreBase with _$NameFormStore;

abstract class _NameFormStoreBase with Store {
  late ReactionDisposer _disposer;
  final error = NameFormErrorState();

  @observable
  String name = '';

  @computed
  bool get valid => _isFormValid;

  @action
  void setName(String value) => name = value;

  @action
  void clear() {
    name = '';
    error.clearAll();
  }

  @action
  void validateName(String value) {
    if (value.length < 3) {
      error.name = 'Seu nome precisa ter pelo menos 3 caracteres';
    } else {
      error.name = null;
    }
  }

  @action
  setError({String? message}) {
    error.setNameError(message);
  }

  void setupValidations() {
    _disposer = reaction((_) => name, validateName);
  }

  bool get _isFormValid {
    return name.isNotEmpty;
  }

  void dispose() {
    clear();
    _disposer();
  }
}

class NameFormErrorState = _NameFormErrorState with _$NameFormErrorState;

abstract class _NameFormErrorState with Store {
  @observable
  String? name;

  @computed
  bool get hasNameError => name != null;

  @action
  void setNameError(String? error) => name = error;

  @action
  void clearAll() => name = null;
}
