import 'package:dio/dio.dart';

abstract class HttpClientApp {
  Future<Response<T>> get<T>(
    String url, {
    Map<String, dynamic>? queryParameters,
  });

  Future<Response<T>> post<T>(String url, {required Map<String, dynamic> body});
}
