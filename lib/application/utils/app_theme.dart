import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'utils.dart';

final darkTheme = ThemeData(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primaryColor: AppColors.primary,
  disabledColor: AppColors.surfaceDark,
  highlightColor: AppColors.white,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColors.black,
  backgroundColor: AppColors.black,
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
            return AppColors.surfaceDark;
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
    displayColor: AppColors.white,
    bodyColor: AppColors.white,
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
        color: AppColors.surfaceDark,
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
    disabledColor: AppColors.surfaceDark,
    pressElevation: 0,
    elevation: 0,
    labelStyle: TextStyle(
      color: AppColors.white,
    ),
  ),
  checkboxTheme: CheckboxThemeData(
    fillColor: MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return AppColors.primary;
        }

        if (states.contains(MaterialState.disabled)) {
          return AppColors.surfaceDark;
        }

        return AppColors.primary;
      },
    ),
  ),
);

final lightTheme = ThemeData(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primaryColor: AppColors.primary,
  disabledColor: AppColors.surface,
  highlightColor: AppColors.text,
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
  checkboxTheme: CheckboxThemeData(
    fillColor: MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return AppColors.primary;
        }

        if (states.contains(MaterialState.disabled)) {
          return AppColors.surface;
        }

        return AppColors.primary;
      },
    ),
  ),
);
