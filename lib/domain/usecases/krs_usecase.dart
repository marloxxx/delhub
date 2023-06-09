import 'package:dartz/dartz.dart';

import '../../core/failure.dart';
import '../../core/service_locator.dart';
import '../../data/models/kelompok_model.dart';
import '../../data/models/krs_model.dart';
import '../../data/repositories/krs_repository.dart';

class KRSUsecase {
  Future<Either<Failure, KRSList>> getKRSFromServer() {
    return serviceLocator<KRSRepository>().getKRSFromServer();
  }

  Future<Either<Failure, KelompokList>> getGroupByKrsFromServer(int krsId) {
    return serviceLocator<KRSRepository>().getGroupByKrsFromServer(krsId);
  }
}
