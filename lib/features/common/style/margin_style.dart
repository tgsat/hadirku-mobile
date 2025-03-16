import 'package:flutter/material.dart';
import 'package:hadirku_mobile/utils/utils.dart';

class SpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppbarHeight = EdgeInsets.only(
    top: SizeConfig.appbarHeight,
    left: SizeConfig.defaultSpace,
    bottom: SizeConfig.defaultSpace,
    right: SizeConfig.defaultSpace,
  );
}