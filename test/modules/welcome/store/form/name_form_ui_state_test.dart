import 'package:flutter_test/flutter_test.dart';

import 'package:cooking_home/modules/welcome/store/store.dart';
import 'package:cooking_home/application/shared/enums/ui_status.dart';

void main() {
  group('NameFormUiState', () {
    test('should supports value comparisons', () {
      expect(
        const NameFormUiState(status: UiStatus.initial),
        equals(const NameFormUiState(status: UiStatus.initial)),
      );
    });
  });
}
