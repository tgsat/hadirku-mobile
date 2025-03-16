import 'package:flutter/material.dart';
import 'package:hadirku_mobile/utils/utils.dart';

class CircuralIcon extends StatelessWidget {
  final double? width, height, size;
  final IconData icon;
  final Color? color, backgroundColor;
  final VoidCallback? onTap;
  const CircuralIcon({
    super.key,
    this.width,
    this.height,
    this.size = SizeConfig.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: backgroundColor != null
              ? backgroundColor!
              : HelperFunctions.isDarkMode(context)
                  ? AppColor.black.withOpacity(0.9)
                  : AppColor.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(100)),
      child: IconButton(
          onPressed: onTap, icon: Icon(icon, color: color, size: size)),
    );
  }
}