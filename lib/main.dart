import 'package:flutter/material.dart';

import 'application/app.dart';
import 'interfaces/interfaces.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  initLogger();

  runApp(const MealApp());
}
