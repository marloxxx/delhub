import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../core/service_locator.dart';
import '../data/models/kelompok_model.dart';

const String kelompokCacheKey = 'kelompokcache';

class KelompokCacheService {
  Kelompok? _kelompok;
  Kelompok? get kelompok => _kelompok;

  SharedPreferences get sharedPrefs => serviceLocator<SharedPreferences>();

  Future<bool> saveKelompok(Kelompok kelompok) async {
    var map = kelompok.toJson();
    bool saved = await sharedPrefs.setString(kelompokCacheKey, jsonEncode(map));
    if (saved) {
      _kelompok = await getKelompok();
    }
    return saved;
  }

  Future<Kelompok?> getKelompok() async {
    Kelompok kelompok;
    var kelompokMap = sharedPrefs.getString(kelompokCacheKey);
    if (kelompokMap == null) {
      return null;
    }
    kelompok = Kelompok.fromJson(jsonDecode(kelompokMap));
    _kelompok = kelompok;
    return kelompok;
  }

  Future<bool> deleteKelompok() async {
    _kelompok = null;
    return await sharedPrefs.remove(kelompokCacheKey);
  }
}
