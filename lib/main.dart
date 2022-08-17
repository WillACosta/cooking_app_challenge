import 'package:flutter/widgets.dart';

import 'application/app.dart';
import 'interfaces/interfaces.dart';

void main() async {
  await configureInjection();
  runApp(const MealApp());
}
