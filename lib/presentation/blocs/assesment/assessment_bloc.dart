import 'package:delhub/domain/usecases/assessment_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/service_locator.dart';
import 'assessment_event.dart';
import 'assessment_states.dart';

class AssesmentBloc extends Bloc<AssessmentEvent, AssessmentStates> {
  AssesmentBloc() : super(const AssessmentInitialState()) {
    on<GetAssessmentPoints>(
      (event, emit) async {
        emit(const AssessmentLoadingState());
        try {
          final result = await serviceLocator<AssessmentUsecase>()
              .getAssessmentPointsFromServer(event.$kelompok);
          result.fold(
            (failure) {
              emit(AssessmentErrorState(failure.message));
            },
            (data) {
              emit(AssessmentLoadedState(assessmentPointList: data));
            },
          );
        } catch (e) {
          emit(AssessmentErrorState(e.toString()));
        }
      },
    );
  }
}
