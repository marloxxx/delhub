import 'package:dartz/dartz.dart';

import '../../core/failure.dart';
import '../../core/service_locator.dart';
import '../../data/models/room_model.dart';
import '../../data/repositories/room_repository.dart';

class RoomUsecase {
  Future<Either<Failure, RoomList>> getRoomsFromServer() {
    return serviceLocator<RoomRepository>().getRoomsFromServer();
  }
}
