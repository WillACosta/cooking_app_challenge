import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'utils.dart';

final darkTheme = ThemeData(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primaryColor: AppColors.primary,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColors.primary,
  backgroundColor: AppColors.primary,
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: AppColors.secondary,
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      primary: AppColors.secondary,
      side: const BorderSide(
        color: AppColors.secondary,
        width: 1,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    ),
  ),
  textTheme: GoogleFonts.poppinsTextTheme().apply(
    displayColor: AppColors.secondary,
    bodyColor: AppColors.secondary,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.primary,
  ),
  iconTheme: const IconThemeData(
    color: AppColors.secondary,
  ),
  dialogTheme: DialogTheme(
    backgroundColor: AppColors.primary,
    elevation: 1,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  ),
);

final lightTheme = ThemeData(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primaryColor: AppColors.primary,
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColors.white,
  backgroundColor: AppColors.white,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(0),
      padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
      backgroundColor: MaterialStateProperty.resolveWith<Color?>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return AppColors.accent;
          }

          if (states.contains(MaterialState.disabled)) {
            return AppColors.surface;
          }

          return AppColors.primary;
        },
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    ),
  ),
  textTheme: GoogleFonts.poppinsTextTheme().apply(
    displayColor: AppColors.text,
    bodyColor: AppColors.text,
  ),
  iconTheme: const IconThemeData(
    color: AppColors.white,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    alignLabelWithHint: true,
    floatingLabelStyle: TextStyle(color: AppColors.primary),
    labelStyle: TextStyle(color: AppColors.secondaryText),
    errorBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.error,
      ),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.primary,
      ),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.surface,
      ),
    ),
    disabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.primary,
      ),
    ),
  ),
  chipTheme: const ChipThemeData(
    selectedColor: AppColors.secondary,
    disabledColor: AppColors.surface,
    pressElevation: 0,
    elevation: 0,
    labelStyle: TextStyle(
      color: AppColors.text,
    ),
  ),
);
