import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:cooking_home/domain/repositories/contracts/meal_db_repository.dart';
import 'package:cooking_home/modules/meal/store/meal_detail/meal_detail.dart';
import 'package:cooking_home/application/shared/shared.dart';

import '../../../../fixtures/fixtures.dart';
import '../../../../fixtures/mock/mock.dart';

class MockMealDBRepository extends Mock implements MealDBRepository {}

void main() {
  group('MeaDetailStore', () {
    late MeaDetailStore store;
    late MealDBRepository repository;
    late MockCallable<dynamic> statusChanged;

    setUp(() {
      repository = MockMealDBRepository();
      statusChanged = MockCallable();
      store = MeaDetailStore(repository);
    });

    void setUpRepositorySuccess() {
      when(
        () => repository.getMealByID(MockMeal.fakeMealID),
      ).thenAnswer((_) async => MockMeal.meal);
    }

    void setUpRepositoryFailure() {
      when(
        () => repository.filterMealsByCategory(MockMeal.fakeMealID),
      ).thenThrow((_) => Exception());
    }

    test('should get initial state', () {
      expect(
        store.state,
        isA<MealDetailUiState>().having(
          (state) => state.status,
          'status',
          UiStatus.initial,
        ),
      );
    });

    test('should call getMealByID method', () async {
      await store.getMealByID(MockMeal.fakeMealID);

      verify(() => store.getMealByID(MockMeal.fakeMealID));
    });

    test(
      'should set store state in order if dataSource returns successfully',
      () async {
        setUpRepositorySuccess();

        setUpMobxStoreReaction(
          () => store.state,
          (value) => statusChanged(value),
        );

        await store.getMealByID(MockMeal.fakeMealID);

        verifyInOrder([
          () => statusChanged(
                isA<MealDetailUiState>().having(
                  (state) => state.status,
                  'status',
                  UiStatus.loading,
                ),
              ),
          () => statusChanged(
                isA<MealDetailUiState>()
                    .having(
                      (state) => state.status,
                      'status',
                      UiStatus.success,
                    )
                    .having(
                      (state) => state.meal,
                      'categories',
                      MockMeal.meal,
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

        await store.getMealByID(MockMeal.fakeMealID);

        verifyInOrder([
          () => statusChanged(
                isA<MealDetailUiState>().having(
                  (state) => state.status,
                  'status',
                  UiStatus.loading,
                ),
              ),
          () => statusChanged(
                isA<MealDetailUiState>().having(
                  (state) => state.status,
                  'status',
                  UiStatus.failure,
                ),
              ),
        ]);
      },
    );
  });
}
