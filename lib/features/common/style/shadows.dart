import 'package:flutter/material.dart';
import 'package:hadirku_mobile/utils/utils.dart';

class ShadowStyle {
  static final verticalProductShadow = BoxShadow(
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
    color: AppColor.darkGrey.withOpacity(0.1),
  );
  static final horizontalProductShadow = BoxShadow(
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
    color: AppColor.darkGrey.withOpacity(0.1),
  );
}