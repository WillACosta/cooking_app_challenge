import 'package:cooking_home/core/errors/errors.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MealRepositoryFailure', () {
    test('should supports value comparisons', () {
      expect(
        MealRepositoryFailure(),
        equals(MealRepositoryFailure()),
      );
    });

    test('should has concise toString', () {
      expect(
        MealRepositoryFailure().toString(),
        equals('MealRepositoryFailure()'),
      );
    });
  });
}
