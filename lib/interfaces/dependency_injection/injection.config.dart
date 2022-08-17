// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/shared/store/user_store.dart' as _i13;
import '../../data/data_sources/remote/c_meal_db_data_source.dart' as _i7;
import '../../data/data_sources/remote/meal_db_data_source.dart' as _i6;
import '../../domain/repositories/contracts/meal_db_repository.dart' as _i8;
import '../../domain/repositories/implementations/c_meal_db_repository.dart'
    as _i9;
import '../../modules/container/store/container_view/container_view_store.dart'
    as _i3;
import '../../modules/meal/store/meal_category/meal_category_store.dart'
    as _i16;
import '../../modules/meal/store/meal_category_item/meal_category_item_store.dart'
    as _i15;
import '../../modules/meal/store/meal_detail/meal_detail_store.dart' as _i14;
import '../../modules/welcome/store/form/name_form_store.dart' as _i12;
import '../../modules/welcome/views/name/components/name_form.dart' as _i10;
import '../http/c_http_client_app.dart' as _i5;
import '../http/http_client_app.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.singleton<_i3.ContainerViewStore>(_i3.ContainerViewStore());
  gh.factory<_i4.HttpClientApp>(() => _i5.CHttpClientApp());
  gh.factory<_i6.MealDBDataSource>(
      () => _i7.CMealDBDataSource(get<_i4.HttpClientApp>()));
  gh.factory<_i8.MealDBRepository>(
      () => _i9.CMealDBRepository(get<_i6.MealDBDataSource>()));
  gh.factory<_i10.NameForm>(() => _i10.NameForm(key: get<_i11.Key>()));
  gh.factory<_i12.NameFormStore>(() => _i12.NameFormStore());
  gh.singleton<_i13.UserStore>(_i13.UserStore());
  gh.factory<_i14.MeaDetailStore>(
      () => _i14.MeaDetailStore(get<_i8.MealDBRepository>()));
  gh.singleton<_i15.MealCategoryItemStore>(
      _i15.MealCategoryItemStore(get<_i8.MealDBRepository>()));
  gh.factory<_i16.MealCategoryStore>(
      () => _i16.MealCategoryStore(get<_i8.MealDBRepository>()));
  return get;
}
