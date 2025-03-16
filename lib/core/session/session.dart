import 'package:get/get_rx/get_rx.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Session {
  static Future<SharedPreferences> getInstance() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs;
  }

  static Future<void> loadStoredData(RxString server, RxString token, RxInt employeeId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    server.value = prefs.getString("typed_url") ?? "";
    token.value = prefs.getString("token") ?? "";
    employeeId.value = prefs.getInt("employee_id") ?? 0;
  }

  static Future<void> saveAuthData(String server, String token, int employeeId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("typed_url", server);
    await prefs.setString("token", token);
    await prefs.setInt("employee_id", employeeId);
  }

  static Future<void> clear() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }

  // Token
  static Future<String> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("token") ?? '';
  }

  static Future<bool> setToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString("token", token);
  }

  static Future<String> getTypeUrl() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("typed_url") ?? '';
  }

  static Future<bool> setTypeUrl(String typeUrl) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString("typed_url", typeUrl);
  }

  static Future<int> getEmployeeId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt("employee_id") ?? 0;
  }

  static Future<bool> setEmployeedId(employeeId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setInt("employee_id", employeeId);
  }

  //// Login
  // static Future<bool> isLoggedIn() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   return prefs.getBool(SharedPrefKeys.IS_USER_LOGGED_IN);
  // }

  // static Future<void> setLoggedIn(bool isLoggedIn) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   return prefs.setBool(SharedPrefKeys.IS_USER_LOGGED_IN, isLoggedIn);
  // }
}