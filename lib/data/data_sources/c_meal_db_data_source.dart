import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../interfaces/http/http_client_app.dart';
import '../../interfaces/logger/app_logger.dart';
import '../../core/errors/errors.dart';
import '../../domain/entities/meal.dart';
import '../../domain/entities/meal_category.dart';
import '../../domain/entities/meal_category_item.dart';

import '../models/models.dart';
import 'meal_db_data_source.dart';
import 'meal_resource_endpoints.dart';

@Injectable(as: MealDBDataSource)
class CMealDBDataSource implements MealDBDataSource {
  final HttpClientApp _httpClient;
  late AppLogger _logger;

  CMealDBDataSource(this._httpClient) {
    _logger = AppLogger('CMealDBDataSource');
  }

  @override
  Future<List<MealCategory>> listAllMealCategories() async {
    const endpoint = MealResourceEndpoints.categories;

    final responseMap = await _get(endpoint);
    return MealCategoryModel.fromJsonList(responseMap['categories']);
  }

  @override
  Future<List<MealCategoryItem>> filterMealsByCategory(String category) async {
    const endpoint = MealResourceEndpoints.filterMeals;

    final responseMap = await _get(endpoint, {'c': category});
    return MealCategoryItemModel.fromJsonList(responseMap['meals']);
  }

  @override
  Future<Meal> getMealByID(String id) async {
    const endpoint = MealResourceEndpoints.mealByID;

    final responseMap = await _get(endpoint, {'i': id});
    return MealModel.fromMap(responseMap['meals'][0]);
  }

  _get(String url, [Map<String, dynamic>? queryParameters]) async {
    Response response;

    try {
      response = await _httpClient.get(url, queryParameters: queryParameters);
    } catch (e) {
      _logger.severe('Failed to perform the request', e);
      throw HttpException();
    }

    if (response.statusCode != 200) {
      _logger.severe('Request failed with status code:', response.statusCode);
      throw HttpRequestFailure(response.statusCode!);
    }

    try {
      final data = response.data;
      _logger.fine('Everything ok with request');

      return data is Map ? data : json.decode(response.data) as Map;
    } catch (e) {
      _logger.warning('An error was encountered while decoding JSON data', e);
      throw JsonDecodeException();
    }
  }
}
