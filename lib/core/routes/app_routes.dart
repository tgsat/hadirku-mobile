import 'package:get/get.dart';
import 'package:hadirku_mobile/core/routes/routes.dart';
import 'package:hadirku_mobile/features/screens/notifications/notifications.dart';

class AppRoutes {
  static final pages = [
    GetPage(name: Routes.home, page: () => NotificationScreen()),
  ];
}