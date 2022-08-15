// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_detail_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MeaDetailStore on _MeaDetailStoreBase, Store {
  Computed<MealDetailUiState>? _$stateComputed;

  @override
  MealDetailUiState get state =>
      (_$stateComputed ??= Computed<MealDetailUiState>(() => super.state,
              name: '_MeaDetailStoreBase.state'))
          .value;

  late final _$_stateAtom =
      Atom(name: '_MeaDetailStoreBase._state', context: context);

  @override
  MealDetailUiState get _state {
    _$_stateAtom.reportRead();
    return super._state;
  }

  @override
  set _state(MealDetailUiState value) {
    _$_stateAtom.reportWrite(value, super._state, () {
      super._state = value;
    });
  }

  late final _$_MeaDetailStoreBaseActionController =
      ActionController(name: '_MeaDetailStoreBase', context: context);

  @override
  void _setState(MealDetailUiState newState) {
    final _$actionInfo = _$_MeaDetailStoreBaseActionController.startAction(
        name: '_MeaDetailStoreBase._setState');
    try {
      return super._setState(newState);
    } finally {
      _$_MeaDetailStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
state: ${state}
    ''';
  }
}
