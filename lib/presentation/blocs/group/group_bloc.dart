import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/service_locator.dart';
import '../../../data/models/user_model.dart';
import '../../../domain/usecases/get_local_data_usecase.dart';
import '../../../domain/usecases/krs_usecase.dart';
import 'group_event.dart';
import 'group_states.dart';

class GroupBloc extends Bloc<GroupEvent, GroupState> {
  GroupBloc() : super(const GroupInitialState()) {
    on<GetDatabyKrsEvent>(
      (event, emit) async {
        emit(const GroupLoadingState());
        var group = await serviceLocator<KRSUsecase>()
            .getGroupByKrsFromServer(event.krsId);
        var user = await serviceLocator<GetLocalDataUsecase>()
            .getUserFromLocalStorage();

        // set the data to the state
        emit(
          GroupState.loaded(
            groupList: group.getOrElse(
              () => [],
            ),
            user: user.getOrElse(
              () => User(),
            ),
          ),
        );
      },
    );
  }
}
