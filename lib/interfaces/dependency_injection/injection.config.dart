// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/data_sources/c_meal_db_data_source.dart' as _i6;
import '../../data/data_sources/meal_db_data_source.dart' as _i5;
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
  return get;
}
