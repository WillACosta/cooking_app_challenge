import 'package:flutter_test/flutter_test.dart';

import 'package:cooking_home/application/shared/shared.dart';
import 'package:cooking_home/modules/welcome/store/store.dart';

void main() {
  group('MealCategoryUiState', () {
    test('should supports value comparisons', () {
      expect(
        const WelcomeUiState(
          status: UiStatus.initial,
          userName: 'User name test',
        ),
        equals(
          const WelcomeUiState(
            status: UiStatus.initial,
            userName: 'User name test',
          ),
        ),
      );
    });
  });
}
