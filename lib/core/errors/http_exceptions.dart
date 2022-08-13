class JsonDecodeException implements Exception {}

class HttpRequestFailure implements Exception {
  final int statusCode;

  HttpRequestFailure(this.statusCode);
}

class HttpException implements Exception {}
