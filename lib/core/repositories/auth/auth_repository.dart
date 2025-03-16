import 'dart:convert';

import 'package:get/get.dart';
import 'package:hadirku_mobile/core/session/session.dart';
import 'package:hadirku_mobile/utils/utils.dart';
import 'package:http/http.dart' as http;

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  /// [EmailAuthentication] - Login
  Future<void> loginWithEmailPassword(
    String server,
    String username,
    String password,
  ) async {
    String url = "$server${Endpoint.login}";
    try {
      http.Response response = await http.post(
        Uri.parse(url),
        body: {'username': username, 'password': password},
      );
      if (response.statusCode == 200) {
        var token = jsonDecode(response.body)['access'];
        var employeeId = jsonDecode(response.body)['employee']['id'];

        Session.setToken(token);
        Session.setTypeUrl(server);
        Session.setEmployeedId(employeeId);
      } else {
        Loaders.errorSnackBar(
          title: Dictionary.oops,
          message: Dictionary.invalidEmailAndPassword,
        );
      }
    } catch (e) {
      throw Dictionary.invalidServerAddress;
    }
  }
}
