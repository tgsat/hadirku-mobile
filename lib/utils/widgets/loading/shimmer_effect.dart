import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../utils.dart';

class ShimmerEffect extends StatelessWidget {
  final double width, height, radius;
  final Color? color;
  const ShimmerEffect({
    super.key,
    required this.width,
    required this.height,
    this.radius = 15,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Shimmer.fromColors(
      baseColor: dark ? Colors.grey[850]! : Colors.grey[300]!,
      highlightColor: dark ? Colors.grey[700]! : Colors.grey[100]!,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color ?? (dark ? AppColor.darkerGrey : AppColor.white),
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}