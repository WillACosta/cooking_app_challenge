import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:cooking_home/core/errors/domain_failures.dart';
import 'package:cooking_home/data/data_sources/meal_db_data_source.dart';
import 'package:cooking_home/domain/repositories/c_meal_db_repository.dart';

import '../../fixtures/mock/mock.dart';

class MockMealDBDataSource extends Mock implements MealDBDataSource {}

void main() {
  group('MealDBRepository', () {
    late MealDBDataSource dataSource;
    late CMealDBRepository repository;

    setUp(() {
      dataSource = MockMealDBDataSource();
      repository = CMealDBRepository(dataSource);
    });

    group('listAllMealCategories', () {
      test(
        'should throws a `MealRepositoryFailure` when data source throws an exception',
        () {
          when(() => dataSource.listAllMealCategories()).thenThrow(Exception());

          expect(
            () => repository.listAllMealCategories(),
            throwsA(isA<MealRepositoryFailure>()),
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

    group('filterMealsByCategory', () {
      const categoryTerm = MockMeal.categoryTerm;

      test(
        'should throws a `MealRepositoryFailure` when data source throws an exception',
        () {
          when(
            () => dataSource.filterMealsByCategory(categoryTerm),
          ).thenThrow(Exception());

          expect(
            () => repository.filterMealsByCategory(categoryTerm),
            throwsA(isA<MealRepositoryFailure>()),
          );

          verify(() => dataSource.filterMealsByCategory(categoryTerm));
        },
      );

      test(
        'should makes correct request and return a List of MealCategoryItem',
        () async {
          when(
            () => dataSource.filterMealsByCategory(categoryTerm),
          ).thenAnswer(
            (_) async => MockMeal.mealCategoriesItem,
          );

          final result = await repository.filterMealsByCategory(categoryTerm);

          expect(result, equals(MockMeal.mealCategoriesItem));
          verify(() => dataSource.filterMealsByCategory(categoryTerm));
        },
      );
    });

    group('getMealByID', () {
      const fakeMealID = MockMeal.fakeMealID;

      test(
        'should throws a `MealRepositoryFailure` when data source throws an exception',
        () {
          when(
            () => dataSource.getMealByID(fakeMealID),
          ).thenThrow(Exception());

          expect(
            () => repository.getMealByID(fakeMealID),
            throwsA(isA<MealRepositoryFailure>()),
          );

          verify(() => dataSource.getMealByID(fakeMealID));
        },
      );

      //   test(
      //     'should makes correct request and return a Meal',
      //     () async {
      //       when(
      //         () => dataSource.getMealByID(fakeMealID),
      //       ).thenAnswer(
      //         (_) async => MockMeal.meal,
      //       );

      //       final result = await repository.getMealByID(fakeMealID);

      //       expect(result, equals(MockMeal.meal));
      //       verify(() => dataSource.getMealByID(fakeMealID));
      //     },
      //   );
    });
  });
}
