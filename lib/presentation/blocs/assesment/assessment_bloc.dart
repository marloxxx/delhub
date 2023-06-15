import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/service_locator.dart';
import '../../../domain/usecases/assessment_usecase.dart';
import 'assessment_event.dart';
import 'assessment_states.dart';

class AssessmentBloc extends Bloc<AssessmentEvent, AssessmentStates> {
  AssessmentBloc() : super(const AssessmentInitialState()) {
    on<GetAssessmentPoints>(
      (event, emit) async {
        emit(const AssessmentLoadingState());
        try {
          final assessmentPoints = await serviceLocator<AssessmentUsecase>()
              .getAssessmentPointsFromServer(event.kelompok);
          final assessmentStudents = await serviceLocator<AssessmentUsecase>()
              .getAssessmentStudentsFromServer(event.kelompok);
          emit(
            AssessmentLoadedState(
              assessmentPointList: assessmentPoints.getOrElse(() => []),
              assessmentStudentList: assessmentStudents.getOrElse(() => []),
              isUpdated: false,
            ),
          );
        } catch (e) {
          emit(AssessmentErrorState(e.toString()));
        }
      },
    );
    on<StoreAssessmentPoints>(
      (event, emit) async {
        emit(const AssessmentLoadingState());
        try {
          final result = await serviceLocator<AssessmentUsecase>()
              .storeAssessmentPointsToServer(
                  event.kelompok, event.assessmentStudentList);
          result.fold(
            (failure) {
              emit(AssessmentErrorState(failure.message));
            },
            (data) {
              emit(const AssessmentLoadedState(
                assessmentPointList: [],
                assessmentStudentList: [],
                isUpdated: true,
              ));
            },
          );
        } catch (e) {
          emit(AssessmentErrorState(e.toString()));
        }
      },
    );
  }
}
