import 'dart:convert';

import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:hadirku_mobile/core/session/session.dart';
import 'package:hadirku_mobile/utils/utils.dart';
import 'package:http/http.dart' as http;

import '../../../features/screens/authentication/login_screen.dart';
import '../../../navigation_menu.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  var server = ''.obs;
  var token = ''.obs;
  var employeeId = 0.obs;

  @override
  void onReady() {
    super.onReady();
    FlutterNativeSplash.remove();

    // Load session data sebelum redirect
    Session.loadStoredData(server, token, employeeId).then((_) {
      screenRedirect();
    });
  }

  /// Cek apakah sesi user masih valid
  Future<bool> checkUserSession() async {
    if (server.isEmpty || token.isEmpty) return false;

    try {
      final response = await http.get(
        Uri.parse('${server.value}${Endpoint.employee}$employeeId'),
        headers: {
          'Authorization': 'Bearer ${token.value}',
          'Content-Type': 'application/json',
        },
      );

      return response.statusCode == 200;
    } catch (e) {
      return false;
    }
  }

  /// Redirect user berdasarkan status login
  Future<void> screenRedirect() async {
    bool isAuthenticated = await checkUserSession();
    if (isAuthenticated) {
      Get.offAll(() => const NavigationMenu());
    } else {
      Get.offAll(() => const LoginScreen());
    }
  }

  /// Login dengan email dan password
  Future<void> loginWithEmailPassword(
    String newServer, 
    String username, 
    String password,
  ) async {
    String url = "$newServer${Endpoint.login}";
    try {
      http.Response response = await http.post(
        Uri.parse(url),
        body: {'username': username, 'password': password},
      );

      if (response.statusCode == 200) {
        var responseData = jsonDecode(response.body);
        var newToken = responseData['access'];
        var newEmployeeId = responseData['employee']['id'];

        // Simpan session
        await Session.saveAuthData(newServer, newToken, newEmployeeId);

        // Update nilai di state
        server.value = newServer;
        token.value = newToken;
        employeeId.value = newEmployeeId;

        screenRedirect();
      } else {
        Get.snackbar("Error", "Invalid email or password");
      }
    } catch (e) {
      throw "Invalid server address";
    }
  }
}

