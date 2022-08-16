import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:cooking_home/modules/meal/store/meal_category_item/meal_category_item.dart';
import 'package:cooking_home/domain/repositories/meal_db_repository.dart';
import 'package:cooking_home/application/shared/shared.dart';

import '../../../../fixtures/fixtures.dart';
import '../../../../fixtures/mock/mock.dart';

class MockMealDBRepository extends Mock implements MealDBRepository {}

void main() {
  group('MealCategoryItemStore', () {
    late MealCategoryItemStore store;
    late MealDBRepository repository;
    late MockCallable<dynamic> statusChanged;

    setUp(() {
      repository = MockMealDBRepository();
      statusChanged = MockCallable();
      store = MealCategoryItemStore(repository);
    });

    void setUpRepositorySuccess() {
      when(
        () => repository.filterMealsByCategory(MockMeal.categoryTerm),
      ).thenAnswer((_) async => MockMeal.mealCategoriesItem);
    }

    void setUpRepositoryFailure() {
      when(
        () => repository.filterMealsByCategory(MockMeal.categoryTerm),
      ).thenThrow((_) => Exception());
    }

    test('should get initial state', () {
      expect(
        store.state,
        isA<MealCategoryItemUiState>().having(
          (state) => state.status,
          'status',
          UiStatus.initial,
        ),
      );
    });

    test('should call getAllMealsByCategoryName method', () async {
      await store.getAllMealsByCategoryName(MockMeal.categoryTerm);

      verify(() => store.getAllMealsByCategoryName(MockMeal.categoryTerm));
    });

    test(
      'should set store state in order if dataSource returns successfully',
      () async {
        setUpRepositorySuccess();

        setUpMobxStoreReaction(
          () => store.state,
          (value) => statusChanged(value),
        );

        await store.getAllMealsByCategoryName(MockMeal.categoryTerm);

        verifyInOrder([
          () => statusChanged(
                isA<MealCategoryItemUiState>().having(
                  (state) => state.status,
                  'status',
                  UiStatus.loading,
                ),
              ),
          () => statusChanged(
                isA<MealCategoryItemUiState>()
                    .having(
                      (state) => state.status,
                      'status',
                      UiStatus.success,
                    )
                    .having(
                      (state) => state.meals,
                      'categories',
                      MockMeal.mealCategoriesItem,
                    ),
              ),
        ]);
      },
    );

    test(
      'should set store state in order if repository returns unsuccessfully',
      () async {
        setUpRepositoryFailure();

        setUpMobxStoreReaction(
          () => store.state,
          (value) => statusChanged(value),
        );

        await store.getAllMealsByCategoryName(MockMeal.categoryTerm);

        verifyInOrder([
          () => statusChanged(
                isA<MealCategoryItemUiState>().having(
                  (state) => state.status,
                  'status',
                  UiStatus.loading,
                ),
              ),
          () => statusChanged(
                isA<MealCategoryItemUiState>().having(
                  (state) => state.status,
                  'status',
                  UiStatus.failure,
                ),
              ),
        ]);
      },
    );

    test('should set currentCategoryName', () async {
      setUpRepositorySuccess();
      await store.getAllMealsByCategoryName(MockMeal.categoryTerm);

      expect(store.currentCategoryName, equals(MockMeal.categoryTerm));
    });
  });
}
