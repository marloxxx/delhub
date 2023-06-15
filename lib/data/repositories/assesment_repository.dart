import 'package:dartz/dartz.dart';
import 'package:delhub/data/models/assessment_student_model.dart';

import '../../core/failure.dart';
import '../../core/service_locator.dart';
import '../datasources/remote_datasource.dart';
import '../models/assessment_point_model.dart';
import '../models/kelompok_model.dart';

abstract class AssessmentRepository {
  Future<Either<Failure, AssessmentPointList>> getAssessmentPointsFromServer(
      Kelompok kelompok);

  Future<Either<Failure, bool>> storeAssessmentPointsToServer(
      Kelompok kelompok, AssessmentStudentList assessmentStudentList);
}

class AssessmentRepositoryImpl implements AssessmentRepository {
  @override
  Future<Either<Failure, AssessmentPointList>> getAssessmentPointsFromServer(
      Kelompok kelompok) async {
    return serviceLocator<RemoteDataSource>()
        .getAssessmentPointsFromServer(kelompok);
  }

  @override
  Future<Either<Failure, bool>> storeAssessmentPointsToServer(
      Kelompok kelompok, AssessmentStudentList assessmentStudentList) {
    return serviceLocator<RemoteDataSource>()
        .storeAssessmentPointsToServer(kelompok, assessmentStudentList);
  }
}
