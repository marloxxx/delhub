import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../../../core/service_locator.dart';
import '../../services/local_data_cache_service.dart';
import '../../services/local_token_cache_service.dart';
import '../models/dosen_model.dart';
import '../models/kelompok_model.dart';
import '../models/mahasiswa_model.dart';
import '../models/user_model.dart';

abstract class LocalDataSource {
  Future<Either<Failure, User>> getUserFromLocalStorage();

  Future<Either<Failure, Mahasiswa>> getMahasiswaFromLocalStorage();

  Future<Either<Failure, Kelompok>> getKelompokFromLocalStorage();

  Future<Either<Failure, Dosen>> getDosenFromLocalStorage();

  Future<Either<Failure, String>> getTokenFromLocalStorage();
}

class LocalDataSourceImpl extends LocalDataSource {
  @override
  Future<Either<Failure, User>> getUserFromLocalStorage() async {
    try {
      final user = serviceLocator<LocalDataCacheService>().user;
      if (user != null) {
        return Right(user);
      }
      return const Left(
        LocalDatabaseQueryFailure('Unable to query form the shared prefs'),
      );
    } catch (e) {
      return const Left(
        ParsingFailure(
          'Exception Occured in LocalDataSourceImpl',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, Mahasiswa>> getMahasiswaFromLocalStorage() async {
    try {
      final mahasiswa =
          await serviceLocator<LocalDataCacheService>().getMahasiswa();
      if (mahasiswa != null) {
        return Right(mahasiswa);
      }
      return const Left(
        LocalDatabaseQueryFailure('Unable to query form the shared prefs'),
      );
    } catch (e) {
      return const Left(
        ParsingFailure(
          'Exception Occured in LocalDataSourceImpl',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, Kelompok>> getKelompokFromLocalStorage() async {
    try {
      final kelompok =
          await serviceLocator<LocalDataCacheService>().getKelompok();
      if (kelompok != null) {
        return Right(kelompok);
      }
      return const Left(
        LocalDatabaseQueryFailure('Unable to query form the shared prefs'),
      );
    } catch (e) {
      return const Left(
        ParsingFailure(
          'Exception Occured in LocalDataSourceImpl',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, Dosen>> getDosenFromLocalStorage() async {
    try {
      final pembimbing =
          await serviceLocator<LocalDataCacheService>().getDosen();
      if (pembimbing != null) {
        return Right(pembimbing);
      }
      return const Left(
        LocalDatabaseQueryFailure('Unable to query form the shared prefs'),
      );
    } catch (e) {
      return const Left(
        ParsingFailure(
          'Exception Occured in LocalDataSourceImpl',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, String>> getTokenFromLocalStorage() async {
    try {
      final token = await serviceLocator<LocalTokenCacheService>().getToken();
      if (token != null) {
        return Right(token);
      }
      return const Left(
        LocalDatabaseQueryFailure('Unable to query form the shared prefs'),
      );
    } catch (e) {
      return const Left(
        ParsingFailure(
          'Exception Occured in LocalDataSourceImpl',
        ),
      );
    }
  }
}
