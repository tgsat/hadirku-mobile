import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hadirku_mobile/utils/utils.dart';

import '../../../../core/repositories/auth/auth_repository.dart';
import '../../../../navigation_menu.dart';

class LoginController extends GetxController {
  final hidePassword = true.obs;

  final server = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();


  Future<void> emailAndPasswordSignin() async {
    try {
      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        // FullScreenLoader.stopLoading();
        return;
      }

      // Form Validation
      if (!loginFormKey.currentState!.validate()) {
        // FullScreenLoader.stopLoading();
        return;
      }

      await AuthenticationRepository.instance
          .loginWithEmailPassword(server.text.trim(), email.text.trim(), password.text.trim());

      Get.offAll(() => const NavigationMenu());
    } catch (e) {
      Loaders.errorSnackBar(title: Dictionary.oops, message: e.toString());
    }
  }
}
