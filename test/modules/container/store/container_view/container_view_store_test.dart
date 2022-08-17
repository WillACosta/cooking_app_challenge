import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:cooking_home/modules/container/store/store.dart';

class MockPageController extends Mock implements PageController {}

void main() {
  late ContainerViewStore store;

  setUp(() {
    store = ContainerViewStore();
  });

  group('ContainerViewStore', () {
    test('should get inital currentPage with index 0', () {
      expect(store.currentPage, 0);
    });

    test('should set currentPage and get the same', () {
      store.setCurrentPage(1);
      expect(store.currentPage, 1);
    });
  });
}
