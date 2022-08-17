import 'package:flutter_test/flutter_test.dart';

import 'package:cooking_home/modules/welcome/store/store.dart';

void main() {
  late NameFormStore store;

  setUp(() {
    store = NameFormStore();
  });

  group('NameFormStore', () {
    test('should set/get name propertie from state', () {
      store.setName('User Test');
      expect(store.name, equals('User Test'));
    });

    test('should verify if store has an error', () {
      expect(store.valid, equals(false));
    });

    test('should validate if name is valid', () {
      store.validateName('User Test');
      expect(store.error.hasNameError, equals(false));
    });

    test('should validate if name is invalid', () {
      store.validateName('Us');

      expect(store.error.hasNameError, equals(true));
    });

    test('shoud clear all form values', () {
      store.setName('User Test');
      store.clear();

      expect(store.valid, equals(false));
    });

    test('should call dispose method and reset store values', () {
      store.setupValidations();
      store.dispose();

      expect(store.valid, equals(false));
    });
  });

  group('NameFormErrorState', () {
    const errorMessage = 'Any name error message';

    test(
      '''shoud verify if setError on name call correct method and set the error
        message when receives a message ''',
      () {
        store.setError(message: errorMessage);

        expect(store.error.name, equals(errorMessage));
        expect(store.error.hasNameError, equals(true));
      },
    );
  });
}
