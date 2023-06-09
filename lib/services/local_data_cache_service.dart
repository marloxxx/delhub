import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../core/service_locator.dart';
import '../data/models/dosen_model.dart';
import '../data/models/kelompok_model.dart';
import '../data/models/mahasiswa_model.dart';
import '../data/models/user_model.dart';

const String userCacheKey = 'usercache';
const String mahasiswaCacheKey = 'mahasiswacache';
const String kelompokCacheKey = 'kelompokcache';
const String dosenCacheKey = 'dosencache';

class LocalDataCacheService {
  User? _user;
  User? get user => _user;
  Mahasiswa? _mahasiswa;
  Mahasiswa? get mahasiswa => _mahasiswa;
  Kelompok? _kelompok;
  Kelompok? get kelompok => _kelompok;
  Dosen? _dosen;
  Dosen? get dosen => _dosen;

  SharedPreferences get sharedPrefs => serviceLocator<SharedPreferences>();

  Future<bool> saveUser(User user) async {
    var map = user.toJson();
    bool saved = await sharedPrefs.setString(userCacheKey, jsonEncode(map));
    if (saved) {
      _user = await getUser();
    }
    return saved;
  }

  Future<User?> getUser() async {
    User usr;
    var userMap = sharedPrefs.getString(userCacheKey);
    if (userMap == null) {
      return null;
    }
    usr = User.fromJson(jsonDecode(userMap));
    _user = usr;
    return usr;
  }

  Future<bool> deleteUser() async {
    _user = null;
    return await sharedPrefs.remove(userCacheKey);
  }

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
