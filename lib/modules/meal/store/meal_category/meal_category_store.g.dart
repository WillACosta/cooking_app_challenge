// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_category_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MealCategoryStore on _MealCategoryStoreBase, Store {
  Computed<MealCategoryUiState>? _$stateComputed;

  @override
  MealCategoryUiState get state =>
      (_$stateComputed ??= Computed<MealCategoryUiState>(() => super.state,
              name: '_MealCategoryStoreBase.state'))
          .value;

  late final _$_stateAtom =
      Atom(name: '_MealCategoryStoreBase._state', context: context);

  @override
  MealCategoryUiState get _state {
    _$_stateAtom.reportRead();
    return super._state;
  }

  @override
  set _state(MealCategoryUiState value) {
    _$_stateAtom.reportWrite(value, super._state, () {
      super._state = value;
    });
  }

  late final _$_MealCategoryStoreBaseActionController =
      ActionController(name: '_MealCategoryStoreBase', context: context);

  @override
  void _setState(MealCategoryUiState newState) {
    final _$actionInfo = _$_MealCategoryStoreBaseActionController.startAction(
        name: '_MealCategoryStoreBase._setState');
    try {
      return super._setState(newState);
    } finally {
      _$_MealCategoryStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
state: ${state}
    ''';
  }
}
