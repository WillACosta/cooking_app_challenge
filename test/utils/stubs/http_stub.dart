import 'package:dio/dio.dart';
import 'package:mocktail/mocktail.dart';

import 'package:cooking_home/interfaces/http/http_client_app.dart';

enum ResponseType { success, failure, error }

class HttpStubs {
  final HttpClientApp httpClient;

  HttpStubs(this.httpClient);

  void setupHttpClientResponse(
    String url,
    dynamic payload, {
    ResponseType responseType = ResponseType.success,
    Map<String, String>? headers,
  }) {
    switch (responseType) {
      case ResponseType.success:
        when(() => httpClient.get(url)).thenAnswer(
          (_) async => Response(
            data: payload,
            statusCode: 200,
            requestOptions: _getRequestOptions(url),
          ),
        );
        break;

      case ResponseType.failure:
        when(() => httpClient.get(url)).thenAnswer(
          (_) async => Response(
            data: payload,
            statusCode: 400,
            requestOptions: _getRequestOptions(url),
          ),
        );
        break;

      case ResponseType.error:
        when(() => httpClient.get(url)).thenThrow(
          DioError(requestOptions: _getRequestOptions(url)),
        );
        break;
    }
  }

  static _getRequestOptions(String url, {String method = 'POST'}) {
    return RequestOptions(
      method: method,
      baseUrl: 'https://mealdb.test/api',
      path: url,
    );
  }
}
