import 'package:cooking_home/core/errors/errors.dart';
import 'package:cooking_home/interfaces/http/http_client_app.dart';
import 'package:mocktail/mocktail.dart';

import 'package:cooking_home/data/data_sources/c_meal_db_data_source.dart';
import 'package:cooking_home/data/data_sources/meal_resource_endpoints.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../fixtures/fixtures.dart';
import '../../fixtures/mock/mock.dart';
import '../../utils/utils.dart';

class MockHttpClient extends Mock implements HttpClientApp {}

void main() {
  late HttpClientApp httpClient;
  late HttpStubs httpStubs;
  late CMealDBDataSource dataSource;

  const endpoint = MealResourceEndpoints.categories;

  setUpAll(() {
    httpClient = MockHttpClient();
    httpStubs = HttpStubs(httpClient);
    dataSource = CMealDBDataSource(httpClient);
  });

  group('CMealDBDataSource', () {
    test('should verify if get method has successfully called', () async {
      httpStubs.setupHttpClientResponse(
        endpoint,
        fixture(MockMeal.mockMealCategoriesJSONKey),
      );

      await dataSource.listAllMealCategories();

      verify(() => httpClient.get(endpoint)).called(1);
    });

    test('should throws `HttpException` if calls was unsuccessful', () async {
      httpStubs.setupHttpClientResponse(
        endpoint,
        null,
        responseType: ResponseType.error,
      );

      expect(
        () => dataSource.listAllMealCategories(),
        throwsA(isA<HttpException>()),
      );
    });

    test(
      'should throws `HttpRequestFailure` when response status code is not 200',
      () async {
        httpStubs.setupHttpClientResponse(
          endpoint,
          null,
          responseType: ResponseType.failure,
        );

        expect(
          () => dataSource.listAllMealCategories(),
          throwsA(
            isA<HttpRequestFailure>().having(
              (error) => error.statusCode,
              'statusCode',
              400,
            ),
          ),
        );
      },
    );

    test(
      'should throws `JsonDecodeException` when decoding response fails',
      () {
        httpStubs.setupHttpClientResponse(
          endpoint,
          'invalid JSON',
        );

        expect(
          () => dataSource.listAllMealCategories(),
          throwsA(
            isA<JsonDecodeException>(),
          ),
        );
      },
    );
  });

  test('should returns correct list of meal categories', () {
    httpStubs.setupHttpClientResponse(
      endpoint,
      fixture(MockMeal.mockMealCategoriesJSONKey),
    );

    expect(
      dataSource.listAllMealCategories(),
      completion(equals(MockMeal.categories)),
    );
  });
}
