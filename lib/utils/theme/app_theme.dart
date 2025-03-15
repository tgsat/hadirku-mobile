import 'package:flutter/material.dart';

import '../utils.dart';

class AppTheme {
  AppTheme._();

  // Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TextThemes.lightTextTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarThemes.lightAppBarTheme,
    elevatedButtonTheme: ElevatedButtonThemes.lightElevatedButtonTheme,
    outlinedButtonTheme: OutlinedButtonThemes.lightOutlinedButtonTheme,
    inputDecorationTheme: TextFieldThemes.lightInputDecorationTheme,
  );

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    disabledColor: AppColor.grey,
    brightness: Brightness.dark,
    primaryColor: AppColor.primary,
    textTheme: TextThemes.darkTextTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarThemes.darkAppBarTheme,
    elevatedButtonTheme: ElevatedButtonThemes.darkElevatedButtonTheme,
    outlinedButtonTheme: OutlinedButtonThemes.darkOutlinedButtonTheme,
    inputDecorationTheme: TextFieldThemes.darkInputDecorationTheme,
  );
}