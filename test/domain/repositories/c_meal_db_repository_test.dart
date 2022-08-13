import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:cooking_home/core/errors/domain_failures.dart';
import 'package:cooking_home/data/data_sources/meal_db_data_source.dart';
import 'package:cooking_home/domain/repositories/c_meal_db_repository.dart';

import '../../fixtures/mock/mock.dart';

class MockMealDBDataSource extends Mock implements MealDBDataSource {}

void main() {
  late MealDBDataSource dataSource;
  late CMealDBRepository repository;

  setUp(() {
    dataSource = MockMealDBDataSource();
    repository = CMealDBRepository(dataSource);
  });

  group('MealDBRepository', () {
    test(
      'should `MealCategoryFailure` when data source throws an exception',
      () {
        when(() => dataSource.listAllMealCategories()).thenThrow(Exception());

        expect(
          () => repository.listAllMealCategories(),
          throwsA(isA<MealCategoryFailure>()),
        );

        verify(() => dataSource.listAllMealCategories());
      },
    );

    test(
      'should makes correct request and return a List of MealCategory',
      () async {
        when(() => dataSource.listAllMealCategories()).thenAnswer(
          (_) async => MockMeal.categories,
        );

        final result = await repository.listAllMealCategories();

        expect(result, equals(MockMeal.categories));
        verify(() => dataSource.listAllMealCategories());
      },
    );
  });
}
