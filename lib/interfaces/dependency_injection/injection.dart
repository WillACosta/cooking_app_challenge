import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

/// return an instance of specific type of class
final GetIt serviceLocator = GetIt.instance;

@injectableInit
Future<void> setUpInjectable() async => $initGetIt(serviceLocator);
