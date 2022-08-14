import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:cooking_home/domain/repositories/meal_db_repository.dart';
import 'package:cooking_home/modules/meal/store/store.dart';

import '../../../../fixtures/fixtures.dart';
import '../../../../fixtures/mock/mock.dart';

class MockMealDBRepository extends Mock implements MealDBRepository {}

void main() {
  group('MealCategoryStore', () {
    late MealCategoryStore store;
    late MealDBRepository repository;
    late MockCallable<dynamic> statusChanged;

    setUp(() {
      repository = MockMealDBRepository();
      statusChanged = MockCallable();
      store = MealCategoryStore(repository);
    });

    void setUpRepositorySuccess() {
      when(
        () => repository.listAllMealCategories(),
      ).thenAnswer((_) async => MockMeal.categories);
    }

    void setUpRepositoryFailure() {
      when(
        () => repository.listAllMealCategories(),
      ).thenThrow((_) => Exception());
    }

    test('should get initial state', () {
      expect(store.state, isA<MealCategoryInitialState>());
    });

    test('should call getAllCategories method', () {
      store.getAllCategories();

      verify(() => store.getAllCategories());
    });

    test(
      'should set store state in order if dataSource returns successfully',
      () async {
        setUpRepositorySuccess();

        setUpMobxStoreReaction(
          () => store.state,
          (value) => statusChanged(value),
        );

        await store.getAllCategories();

        verifyInOrder([
          () => statusChanged(isA<MealCategoryLoadingState>()),
          () => statusChanged(isA<MealCategorySuccessState>()),
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

        await store.getAllCategories();

        verifyInOrder([
          () => statusChanged(isA<MealCategoryLoadingState>()),
          () => statusChanged(isA<MealCategoryErrorState>()),
        ]);
      },
    );
  });
}
