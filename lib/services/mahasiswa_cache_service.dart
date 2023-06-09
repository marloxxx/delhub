import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../core/service_locator.dart';
import '../data/models/mahasiswa_model.dart';

const String mahasiswaCacheKey = 'mahasiswacache';

class MahasiswaCacheService {
  Mahasiswa? _mahasiswa;
  Mahasiswa? get mahasiswa => _mahasiswa;
  SharedPreferences get sharedPrefs => serviceLocator<SharedPreferences>();

  Future<bool> saveMahasiswa(Mahasiswa mahasiswa) async {
    var map = mahasiswa.toJson();
    bool saved =
        await sharedPrefs.setString(mahasiswaCacheKey, jsonEncode(map));
    if (saved) {
      _mahasiswa = await getMahasiswa();
    }
    return saved;
  }

  Future<Mahasiswa?> getMahasiswa() async {
    Mahasiswa mhs;
    var mahasiswaMap = sharedPrefs.getString(mahasiswaCacheKey);
    if (mahasiswaMap == null) {
      return null;
    }
    mhs = Mahasiswa.fromJson(jsonDecode(mahasiswaMap));
    _mahasiswa = mhs;
    return mhs;
  }

  Future<bool> deleteMahasiswa() async {
    _mahasiswa = null;
    return await sharedPrefs.remove(mahasiswaCacheKey);
  }
}
