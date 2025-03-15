import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils.dart';

class TextFieldThemes {
  TextFieldThemes._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: AppColor.grey,
    suffixIconColor: AppColor.grey,
    labelStyle: GoogleFonts.poppins()
        .copyWith(fontSize: SizeConfig.fontSizeMd, color: AppColor.black),
    hintStyle: GoogleFonts.poppins()
        .copyWith(fontSize: SizeConfig.fontSizeSm, color: AppColor.black),
    errorStyle: GoogleFonts.poppins().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:
        const TextStyle().copyWith(color: AppColor.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SizeConfig.inputFielsRadius),
      borderSide: const BorderSide(width: 1, color: AppColor.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SizeConfig.inputFielsRadius),
      borderSide: const BorderSide(width: 1, color: AppColor.grey),
    ),
    disabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SizeConfig.inputFielsRadius),
      borderSide: const BorderSide(width: 1, color: AppColor.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SizeConfig.inputFielsRadius),
      borderSide: const BorderSide(width: 1, color: AppColor.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SizeConfig.inputFielsRadius),
      borderSide: const BorderSide(width: 1, color: AppColor.red),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SizeConfig.inputFielsRadius),
      borderSide: const BorderSide(width: 2, color: AppColor.warning),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: AppColor.darkGrey,
    suffixIconColor: AppColor.darkGrey,
    labelStyle: GoogleFonts.poppins()
        .copyWith(fontSize: SizeConfig.fontSizeMd, color: AppColor.white),
    hintStyle: GoogleFonts.poppins()
        .copyWith(fontSize: SizeConfig.fontSizeSm, color: AppColor.white),
    errorStyle: GoogleFonts.poppins().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:
        const TextStyle().copyWith(color: Colors.white.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SizeConfig.inputFielsRadius),
      borderSide: const BorderSide(width: 1, color: AppColor.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SizeConfig.inputFielsRadius),
      borderSide: const BorderSide(width: 1, color: AppColor.darkGrey),
    ),
    disabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SizeConfig.inputFielsRadius),
      borderSide: const BorderSide(width: 1, color: AppColor.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SizeConfig.inputFielsRadius),
      borderSide: const BorderSide(width: 1, color: AppColor.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SizeConfig.inputFielsRadius),
      borderSide: const BorderSide(width: 1, color: AppColor.red),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(SizeConfig.inputFielsRadius),
      borderSide: const BorderSide(width: 2, color: AppColor.warning),
    ),
  );
}