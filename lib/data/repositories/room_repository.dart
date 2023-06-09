import 'package:dartz/dartz.dart';

import '../../core/failure.dart';
import '../../core/service_locator.dart';
import '../datasources/remote_datasource.dart';
import '../models/room_model.dart';

abstract class RoomRepository {
  Future<Either<Failure, RoomList>> getRoomsFromServer();
}

class RoomRepositoryImpl implements RoomRepository {
  @override
  Future<Either<Failure, RoomList>> getRoomsFromServer() {
    return serviceLocator<RemoteDataSource>().getRoomsFromServer();
  }
}
