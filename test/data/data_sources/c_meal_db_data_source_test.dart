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
  group('CMealDBDataSource', () {
    late HttpClientApp httpClient;
    late HttpStubs httpStubs;
    late CMealDBDataSource dataSource;

    setUpAll(() {
      httpClient = MockHttpClient();
      httpStubs = HttpStubs(httpClient);
      dataSource = CMealDBDataSource(httpClient);
    });

    group('listAllMealCategories', () {
      const endpoint = MealResourceEndpoints.categories;

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
    });

    group('filterMealsByCategory', () {
      const endpoint = MealResourceEndpoints.filterMeals;
      const categoryTerm = 'Chicken';
      const queryParams = {'c': categoryTerm};

      test('should verify if get method has successfully called', () async {
        httpStubs.setupHttpClientResponse(
          endpoint,
          fixture(MockMeal.mockMealJSONKey),
          queryParameters: queryParams,
        );

        await dataSource.filterMealsByCategory(categoryTerm);

        verify(
          () => httpClient.get(
            endpoint,
            queryParameters: queryParams,
          ),
        ).called(1);
      });

      test('should throws `HttpException` if calls was unsuccessful', () async {
        httpStubs.setupHttpClientResponse(
          endpoint,
          null,
          responseType: ResponseType.error,
          queryParameters: queryParams,
        );

        expect(
          () => dataSource.filterMealsByCategory(categoryTerm),
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
            queryParameters: queryParams,
          );

          expect(
            () => dataSource.filterMealsByCategory(categoryTerm),
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
            queryParameters: queryParams,
          );

          expect(
            () => dataSource.filterMealsByCategory(categoryTerm),
            throwsA(
              isA<JsonDecodeException>(),
            ),
          );
        },
      );

      test('should returns correct list of meal categories', () {
        httpStubs.setupHttpClientResponse(
          endpoint,
          fixture(MockMeal.mockMealCategoriesItemJSONKey),
          queryParameters: queryParams,
        );

        expect(
          dataSource.filterMealsByCategory(categoryTerm),
          completion(equals(MockMeal.mealCategoriesItem)),
        );
      });
    });

    group('getMealByID', () {
      const endpoint = MealResourceEndpoints.mealByID;
      const mealID = '1';
      const queryParams = {'i': mealID};

      test('should verify if get method has successfully called', () async {
        httpStubs.setupHttpClientResponse(
          endpoint,
          fixture(MockMeal.mockMealJSONKey),
          queryParameters: queryParams,
        );

        await dataSource.getMealByID(mealID);
        verify(() => httpClient.get(endpoint, queryParameters: queryParams));
      });

      test('should throws `HttpException` if calls was unsuccessful', () async {
        httpStubs.setupHttpClientResponse(
          endpoint,
          null,
          responseType: ResponseType.error,
          queryParameters: queryParams,
        );

        expect(
          () => dataSource.getMealByID(mealID),
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
            queryParameters: queryParams,
          );

          expect(
            () => dataSource.getMealByID(mealID),
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
            queryParameters: queryParams,
          );

          expect(
            () => dataSource.getMealByID(mealID),
            throwsA(
              isA<JsonDecodeException>(),
            ),
          );
        },
      );

      test('should returns correct list of meal categories', () {
        httpStubs.setupHttpClientResponse(
          endpoint,
          fixture(MockMeal.mockMealJSONKey),
          queryParameters: queryParams,
        );

        expect(
          dataSource.getMealByID(mealID),
          completion(equals(MockMeal.meal)),
        );
      });
    });
  });
}
