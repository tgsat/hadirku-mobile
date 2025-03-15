import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'utils.dart';

class HelperFunctions {
  static Color? getColor(String value) {
    if (value == 'Green') {
      return Colors.green;
    } else if (value == 'Green') {
      return Colors.green;
    } else if (value == 'Red') {
      return Colors.red;
    } else if (value == 'Blue') {
      return Colors.blue;
    } else if (value == 'Pink') {
      return Colors.pink;
    } else if (value == 'grey') {
      return Colors.grey;
    } else if (value == 'Purple') {
      return Colors.purple;
    } else if (value == 'Black') {
      return Colors.black;
    } else if (value == 'White') {
      return Colors.white;
    } else if (value == 'Yellow') {
      return Colors.yellow;
    } else if (value == 'Orange') {
      return Colors.orange;
    } else if (value == 'Brown') {
      return Colors.brown;
    } else if (value == 'Teal') {
      return Colors.teal;
    } else if (value == 'Indigo') {
      return Colors.indigo;
    } else {
      return null;
    }
  }

  static void showSnackbar(String message) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  static void showAlert(String title, String message) {
    showDialog(
      context: Get.context!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Oke'),
            ),
          ],
        );
      },
    );
  }

  static void navigatePushToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );
  }

  static void navigatePushReplacementToScreen(
      BuildContext context, Widget screen) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  static void navigatePushAndRemoveUntilToScreen(
      BuildContext context, Widget screen, bool predict) {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => screen),
        (Route<dynamic> route) => predict);
  }

  static void displayBottomSheet(
      BuildContext context, String title, String description) {
    showModalBottomSheet(
        context: context,
        backgroundColor: HelperFunctions.isDarkMode(context)
            ? AppColor.black.withOpacity(0.4)
            : AppColor.white.withOpacity(0.9),
        builder: (ctx) {
          return Container(
              height: !Responsive.isTablet(context) ? 250 : 150,
              padding: const EdgeInsets.all(SizeConfig.defaultSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.only(right: 16),
                    leading: ButtonOpacity(
                        onTap: () => Navigator.of(context).pop(),
                        child: const Icon(Icons.close)),
                    title: Text(title,
                        style: Theme.of(context).textTheme.headlineSmall),
                  ),
                  const SizedBox(height: SizeConfig.spaceBtwItems),
                  Text(description,
                      style: Theme.of(context).textTheme.bodyMedium,
                      overflow: TextOverflow.ellipsis),
                ],
              ));
        });
  }

  static void getBottomSheet(String title, String description) {
    Get.bottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(SizeConfig.md),
            topRight: Radius.circular(SizeConfig.md)),
      ),
      backgroundColor: HelperFunctions.isDarkMode(Get.overlayContext!)
          ? AppColor.black.withOpacity(0.4)
          : AppColor.white.withOpacity(0.9),
      Container(
        width: double.infinity,
        height: !Responsive.isTablet(Get.overlayContext!) ? 250 : 150,
        padding: const EdgeInsets.all(SizeConfig.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.only(right: 16),
              leading: ButtonOpacity(
                  onTap: () => Navigator.of(Get.overlayContext!).pop(),
                  child: const Icon(Icons.close)),
              title: Text(title,
                  style: Theme.of(Get.overlayContext!).textTheme.headlineSmall),
            ),
            const SizedBox(height: SizeConfig.sm),
            Text(description,
                style: Theme.of(Get.overlayContext!).textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis),
          ],
        ),
      ),
    );
  }

  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  static String getFormattedDate(DateTime date,
      {String format = "dd MMM yyyy"}) {
    return DateFormat(format).format(date);
  }

  static List<T> removeDuplicate<T>(List<T> list) {
    return list.toSet().toList();
  }

  static List<Widget> wrapWidget(List<Widget> widgets, int rowSize) {
    final wrapList = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowSize) {
      final rowChildren = widgets.sublist(
          i, i + rowSize > widgets.length ? widgets.length : i + rowSize);
      wrapList.add(Row(children: rowChildren));
    }
    return wrapList;
  }
}