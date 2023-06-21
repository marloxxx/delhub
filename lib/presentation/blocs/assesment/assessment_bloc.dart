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
        final assessmentPoints = await serviceLocator<AssessmentUsecase>()
            .getAssessmentPointsFromServer(event.kelompok);
        if (assessmentPoints.isLeft()) {
          emit(AssessmentErrorState(
              assessmentPoints.fold((l) => l.toString(), (r) => r.toString())));
          return;
        }
        final assessmentStudents = await serviceLocator<AssessmentUsecase>()
            .getAssessmentStudentsFromServer(event.kelompok);
        if (assessmentStudents.isLeft()) {
          emit(AssessmentErrorState(assessmentStudents.fold(
              (l) => l.toString(), (r) => r.toString())));
          return;
        }
        emit(
          AssessmentLoadedState(
            assessmentPointList: assessmentPoints.getOrElse(() => []),
            assessmentStudentList: assessmentStudents.getOrElse(() => []),
            isUpdated: false,
          ),
        );
      },
    );
    on<StoreAssessmentPoints>(
      (event, emit) async {
        emit(const AssessmentLoadingState());

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
      },
    );
  }
}
