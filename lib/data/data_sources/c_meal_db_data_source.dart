import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/entities.dart';
import '../../interfaces/http/http_client_app.dart';
import '../../core/errors/errors.dart';
import '../models/models.dart';
import './meal_db_data_source.dart';
import './meal_resource_endpoints.dart';

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

  Future<Map<String, dynamic>> _get(
    String url, [
    Map<String, dynamic>? queryParameters,
  ]) async {
    Response response;

    try {
      response = await _httpClient.get(url, queryParameters: queryParameters);
    } catch (e) {
      throw HttpException();
    }

    if (response.statusCode != 200) {
      throw HttpRequestFailure(response.statusCode!);
    }

    try {
      final data = response.data;
      return data is Map ? data : json.decode(response.data);
    } catch (e) {
      throw JsonDecodeException();
    }
  }
}
