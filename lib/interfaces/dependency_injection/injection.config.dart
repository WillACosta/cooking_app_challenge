// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/data_sources/c_meal_db_data_source.dart' as _i6;
import '../../data/data_sources/meal_db_data_source.dart' as _i5;
import '../../domain/repositories/c_meal_db_repository.dart' as _i8;
import '../../domain/repositories/meal_db_repository.dart' as _i7;
import '../../modules/meal/store/meal_category/meal_category_store.dart'
    as _i11;
import '../../modules/meal/store/meal_category_item/meal_category_item_store.dart'
    as _i10;
import '../../modules/welcome/store/welcome_store.dart' as _i9;
import '../http/c_http_client_app.dart' as _i4;
import '../http/http_client_app.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.HttpClientApp>(() => _i4.CHttpClientApp());
  gh.factory<_i5.MealDBDataSource>(
      () => _i6.CMealDBDataSource(get<_i3.HttpClientApp>()));
  gh.factory<_i7.MealDBRepository>(
      () => _i8.CMealDBRepository(get<_i5.MealDBDataSource>()));
  gh.factory<_i9.WelcomeStore>(() => _i9.WelcomeStore());
  gh.singleton<_i10.MealCategoryItemStore>(
      _i10.MealCategoryItemStore(get<_i7.MealDBRepository>()));
  gh.factory<_i11.MealCategoryStore>(
      () => _i11.MealCategoryStore(get<_i7.MealDBRepository>()));
  return get;
}
