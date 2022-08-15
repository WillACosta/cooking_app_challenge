import 'package:flutter_test/flutter_test.dart';

import 'package:cooking_home/application/shared/enums/enums.dart';
import 'package:cooking_home/modules/welcome/store/store.dart';
import 'package:mocktail/mocktail.dart';

import '../../../fixtures/fixtures.dart';
import '../../../fixtures/mock/mock.dart';

void main() {
  group('WelcomeStore', () {
    late WelcomeStore store;
    late MockCallable<dynamic> statusChanged;

    const fakeUserName = 'Fake user test';

    setUp(() {
      statusChanged = MockCallable();
      store = WelcomeStore();
    });

    test('should get initial state', () {
      expect(
        store.state,
        isA<WelcomeUiState>().having(
          (state) => state.status,
          'status',
          UiStatus.initial,
        ),
      );
    });

    test('should get hasValidUserName', () async {
      await store.setUserName(fakeUserName);

      expect(store.hasValidUserName, isTrue);
    });

    test(
      'should set store state in order if dataSource returns successfully',
      () async {
        setUpMobxStoreReaction(
          () => store.state,
          (value) => statusChanged(value),
        );

        await store.setUserName(fakeUserName);

        verifyInOrder([
          () => statusChanged(
                isA<WelcomeUiState>().having(
                  (state) => state.status,
                  'status',
                  UiStatus.loading,
                ),
              ),
          () => statusChanged(
                isA<WelcomeUiState>().having(
                  (state) => state.status,
                  'status',
                  UiStatus.success,
                ),
              ),
        ]);
      },
    );
  });
}
