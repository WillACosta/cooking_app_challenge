import 'package:mobx/mobx.dart';

void setUpMobxStoreReaction<T>(
  T Function() fn,
  void Function(T) effect,
) {
  reaction<T>(
    (_) => fn(),
    (value) => effect(value),
  );
}
