import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../core/service_locator.dart';
import '../data/models/dosen_model.dart';

const String dosenCacheKey = 'dosencache';

class DosenCacheService {
  Dosen? _dosen;
  Dosen? get dosen => _dosen;
  SharedPreferences get sharedPrefs => serviceLocator<SharedPreferences>();

  Future<bool> saveDosen(Dosen dosen) async {
    var map = dosen.toJson();
    bool saved = await sharedPrefs.setString(dosenCacheKey, jsonEncode(map));
    if (saved) {
      _dosen = await getDosen();
    }
    return saved;
  }

  Future<Dosen?> getDosen() async {
    Dosen dosen;
    var dosenMap = sharedPrefs.getString(dosenCacheKey);
    if (dosenMap == null) {
      return null;
    }
    dosen = Dosen.fromJson(jsonDecode(dosenMap));
    _dosen = dosen;
    return dosen;
  }

  Future<bool> deleteDosen() async {
    _dosen = null;
    return await sharedPrefs.remove(dosenCacheKey);
  }
}
