import 'package:dartz/dartz.dart';

import '../../core/failure.dart';
import '../../core/service_locator.dart';
import '../../data/models/assessment_point_model.dart';
import '../../data/models/assessment_student_model.dart';
import '../../data/models/kelompok_model.dart';
import '../../data/repositories/assesment_repository.dart';

class AssessmentUsecase {
  Future<Either<Failure, AssessmentPointList>> getAssessmentPointsFromServer(
      Kelompok kelompok) async {
    return serviceLocator<AssessmentRepository>()
        .getAssessmentPointsFromServer(kelompok);
  }

  Future<Either<Failure, bool>> storeAssessmentPointsToServer(
      Kelompok kelompok, AssessmentStudentList assessmentStudentList) async {
    return serviceLocator<AssessmentRepository>()
        .storeAssessmentPointsToServer(kelompok, assessmentStudentList);
  }
}
