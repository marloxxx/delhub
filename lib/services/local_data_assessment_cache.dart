// create a class to save the assessment data locally before sending it to the server
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/service_locator.dart';

const String assessmentKey = 'assessment';

class LocalDataAssessmentCacheService {
  SharedPreferences get sharedPrefs => serviceLocator<SharedPreferences>();

// save the assessment data locally by name 'assessment'
  Future<bool> saveAssessment(Map<String, dynamic> assessment) async {
    bool saved =
        await sharedPrefs.setString(assessmentKey, jsonEncode(assessment));
    return saved;
  }

// get the assessment data locally by name 'assessment'
  Future<Map<String, dynamic>?> getAssessment() async {
    var assessmentMap = sharedPrefs.getString(assessmentKey);
    debugPrint('assessmentMap: $assessmentMap');
    if (assessmentMap == null) {
      return null;
    }
    return jsonDecode(assessmentMap);
  }

// delete the assessment data locally by name 'assessment'
  Future<bool> deleteAssessment() async {
    return await sharedPrefs.remove(assessmentKey);
  }
}
