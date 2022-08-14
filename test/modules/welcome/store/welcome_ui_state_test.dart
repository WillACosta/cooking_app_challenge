import 'package:flutter_test/flutter_test.dart';

import 'package:cooking_home/application/shared/enums/ui_status.dart';
import 'package:cooking_home/modules/welcome/store/welcome_ui_state.dart';

void main() {
  group('WelcomeUiState', () {
    test('should supports value comparisons', () {
      expect(
        const WelcomeUiState(
          status: UiStatus.initial,
          userName: 'Test User',
        ),
        equals(
          const WelcomeUiState(
            status: UiStatus.initial,
            userName: 'Test User',
          ),
        ),
      );
    });
  });
}
