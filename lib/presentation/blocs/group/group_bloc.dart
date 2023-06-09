import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/service_locator.dart';
import '../../../domain/usecases/krs_usecase.dart';
import 'group_event.dart';
import 'group_states.dart';

class GroupBloc extends Bloc<GroupEvent, GroupState> {
  GroupBloc() : super(const GroupInitialState()) {
    on<GetDatabyKrsEvent>(
      (event, emit) async {
        var group = await serviceLocator<KRSUsecase>()
            .getGroupByKrsFromServer(event.krsId);
        // set the data to the state
        emit(
          GroupState.loaded(
            groupList: group.getOrElse(
              () => [],
            ),
          ),
        );
      },
    );
  }
}
