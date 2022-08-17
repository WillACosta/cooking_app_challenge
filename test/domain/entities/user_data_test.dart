import 'package:flutter_test/flutter_test.dart';

import 'package:cooking_home/domain/entities/entities.dart';

void main() {
  group('UserData', () {
    test('should supports value comparisons', () {
      expect(
        const UserData(
          name: 'User Name',
          useDarkMode: false,
        ),
        equals(
          const UserData(
            name: 'User Name',
            useDarkMode: false,
          ),
        ),
      );
    });
  });
}
