import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hadirku_mobile/features/screens/attendance/attendance_screen.dart';
import 'package:hadirku_mobile/utils/utils.dart';

import 'features/screens/home/home_screen.dart';
import 'features/screens/settings/setting_screen.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectIndex.value,
          onDestinationSelected: (i) => controller.selectIndex.value = i,
          backgroundColor: dark ? Colors.black : Colors.white,
          indicatorColor:
              dark
                  ? AppColor.white.withOpacity(0.1)
                  : AppColor.black.withOpacity(0.1),
          destinations: [
            navBar(AppIcons.home, Dictionary.home),
            navBar(AppIcons.attendance, Dictionary.attendance),
            navBar(AppIcons.user, Dictionary.profile),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectIndex.value]),
    );
  }

  navBar(IconData icon, String title) {
    return NavigationDestination(icon: Icon(icon), label: title);
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const AttendanceScreen(),
    const SettingScreen(),
  ];
}
