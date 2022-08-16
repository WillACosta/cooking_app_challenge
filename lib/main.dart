import 'package:flutter/material.dart';

import 'application/app.dart';
import 'interfaces/interfaces.dart';

void main() async {
  await configureInjection();
  runApp(const MealApp());
}
