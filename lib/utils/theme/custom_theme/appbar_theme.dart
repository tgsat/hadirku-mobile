import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils.dart';

class AppBarThemes {
  AppBarThemes._();

  // Light Theme
  static final lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme:
        const IconThemeData(color: Colors.black, size: SizeConfig.iconMd),
    actionsIconTheme:
        const IconThemeData(color: Colors.black, size: SizeConfig.iconMd),
    titleTextStyle: GoogleFonts.poppins(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black),
  );

  // Dark Theme
  static final darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme:
        const IconThemeData(color: Colors.white, size: SizeConfig.iconMd),
    actionsIconTheme:
        const IconThemeData(color: Colors.white, size: SizeConfig.iconMd),
    titleTextStyle: GoogleFonts.poppins(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.white),
  );
}