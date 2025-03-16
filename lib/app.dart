import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hadirku_mobile/utils/utils.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      // initialBinding: GeneralBindings(),
      getPages: AppRoutes.pages,
      home: const Scaffold(
          backgroundColor: AppColor.primary,
          body: Center(child: CircularProgressIndicator(color: Colors.white))),
    );
  }
}