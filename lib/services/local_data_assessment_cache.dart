// create a class to save the assessment data locally before sending it to the server
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../core/service_locator.dart';

const String assessmentKey = 'assessment';

class LocalDataAssessmentCacheService {
  SharedPreferences get sharedPrefs => serviceLocator<SharedPreferences>();

// save the assessment data locally by name 'assessment'
  Future<bool> saveAssessment(List<Map<String, dynamic>> assessment) async {
    return await sharedPrefs.setString(assessmentKey, jsonEncode(assessment));
  }

// get the assessment data locally by name 'assessment'
  List<Map<String, dynamic>> getAssessment() {
    final String? assessmentString = sharedPrefs.getString(assessmentKey);
    if (assessmentString != null) {
      final List<dynamic> assessment = jsonDecode(assessmentString);
      return assessment.cast<Map<String, dynamic>>();
    }
    return [];
  }

// delete the assessment data locally by name 'assessment'
  Future<bool> deleteAssessment() async {
    return await sharedPrefs.remove(assessmentKey);
  }
}
