import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ionicons/ionicons.dart';

import '../../utils.dart';

class Loaders {
  static hideSnackBar() =>
      ScaffoldMessenger.of(Get.context!).hideCurrentSnackBar();

  static customToast({required message}) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        elevation: 0,
        duration: const Duration(seconds: 3),
        backgroundColor: Colors.transparent,
        content: Container(
          padding: const EdgeInsets.all(12.0),
          margin: const EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: HelperFunctions.isDarkMode(Get.context!)
                  ? AppColor.darkerGrey.withOpacity(0.9)
                  : AppColor.grey.withOpacity(0.9)),
          child: Center(
              child: Text(message,
                  style: Theme.of(Get.context!).textTheme.labelLarge)),
        ),
      ),
    );
  }

  static successSnackBar({required title, message = '', duration = 3}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: AppColor.white,
      backgroundColor: AppColor.primary,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: duration),
      margin: const EdgeInsets.all(10),
      icon: const Icon(Iconsax.check, color: AppColor.white),
    );
  }

  static warningSnackBar({required title, message = ''}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: AppColor.white,
      backgroundColor: AppColor.warning,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(10),
      icon: const Icon(Iconsax.warning_2, color: AppColor.white),
    );
  }

  static errorSnackBar({required title, message = ''}) {
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      colorText: AppColor.white,
      backgroundColor: AppColor.red,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(10),
      icon: const Icon(Ionicons.close_circle_outline, color: AppColor.white),
    );
  }
}