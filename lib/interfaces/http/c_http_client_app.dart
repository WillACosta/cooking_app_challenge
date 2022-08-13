import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'http_client_app.dart';

@Injectable(as: HttpClientApp)
class CHttpClientApp implements HttpClientApp {
  final Dio dioClient = Dio(
    BaseOptions(
      baseUrl: 'https://www.themealdb.com/api/json/v1/1',
      receiveTimeout: 5000,
    ),
  );

  @override
  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) {
    return dioClient.get(path, queryParameters: queryParameters);
  }

  @override
  Future<Response<T>> post<T>(
    String path, {
    required Map<String, dynamic> body,
  }) {
    final encodedBody = json.encode(body);
    return dioClient.post<T>(path, data: encodedBody);
  }
}
