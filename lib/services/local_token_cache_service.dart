// this class to save local token to shared preferences
import 'package:shared_preferences/shared_preferences.dart';

import '../core/service_locator.dart';

const String tokenKey = 'firebase_token';

class LocalTokenCacheService {
  SharedPreferences get sharedPrefs => serviceLocator<SharedPreferences>();

  Future<bool> saveToken(String token) async {
    bool saved = await sharedPrefs.setString(tokenKey, token);
    return saved;
  }

  Future<String?> getToken() async {
    String? token = sharedPrefs.getString(tokenKey);
    return token;
  }

  Future<bool> deleteToken() async {
    return await sharedPrefs.remove(tokenKey);
  }
}
