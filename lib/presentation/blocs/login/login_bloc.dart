import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/service_locator.dart';
import '../../../domain/usecases/login_usecase.dart';
import 'login_event.dart';
import 'login_states.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginInitialState()) {
    // normal login
    on<LoginUserEvent>(
      (event, emit) async {
        final user = event.user;
        emit(const LoginLoadingState());
        var result = await serviceLocator<LoginUserUsecase>().login(user);
        result.fold(
          (failure) {
            emit(LoginState.error(failure.message));
          },
          (data) {
            emit(LoginState.loaded(user: data));
          },
        );
      },
    );
  }
}
