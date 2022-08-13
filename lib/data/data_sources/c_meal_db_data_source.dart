import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../core/errors/errors.dart';
import '../../interfaces/http/http_client_app.dart';
import '../../domain/entities/meal_category.dart';
import '../models/models.dart';
import 'meal_db_data_source.dart';
import 'meal_resource_endpoints.dart';

@Injectable(as: MealDBDataSource)
class CMealDBDataSource implements MealDBDataSource {
  final HttpClientApp _httpClient;

  CMealDBDataSource(this._httpClient);

  @override
  Future<List<MealCategory>> listAllMealCategories() async {
    const endpoint = MealResourceEndpoints.categories;

    final responseMap = await _get(endpoint);
    return MealCategoryModel.fromJsonList(responseMap['categories']);
  }

  _get(String url) async {
    Response response;

    try {
      response = await _httpClient.get(url);
    } catch (_) {
      throw HttpException();
    }

    if (response.statusCode != 200) {
      throw HttpRequestFailure(response.statusCode!);
    }

    try {
      return json.decode(response.data) as Map;
    } catch (_) {
      throw JsonDecodeException();
    }
  }
}
