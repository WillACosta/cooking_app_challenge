import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:cooking_home/modules/meal/store/meal_category_item/meal_category_item.dart';
import 'package:cooking_home/domain/repositories/meal_db_repository.dart';

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
      expect(store.state, isA<MealCategoryItemInitialState>());
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
          () => statusChanged(isA<MealCategoryItemLoadingState>()),
          () => statusChanged(isA<MealCategoryItemSuccessState>()),
        ]);
      },
    );

    test(
      'should set store state in order if dataSource returns unsuccessfully',
      () async {
        setUpRepositoryFailure();

        setUpMobxStoreReaction(
          () => store.state,
          (value) => statusChanged(value),
        );

        await store.getAllMealsByCategoryName(MockMeal.categoryTerm);

        verifyInOrder([
          () => statusChanged(isA<MealCategoryItemLoadingState>()),
          () => statusChanged(isA<MealCategoryItemErrorState>()),
        ]);
      },
    );
  });
}
