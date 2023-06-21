import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:flutter/cupertino.dart';
import '../../../../core/failure.dart';
import '../../../../core/request.dart';
import '../../../../core/service_locator.dart';
import '../../services/local_data_cache_service.dart';
import '../models/assessment_point_model.dart';
import '../models/assessment_student_model.dart';
import '../models/dropped_file_model.dart';
import '../models/kelompok_model.dart';
import '../models/krs_model.dart';
import '../models/room_model.dart';
import '../models/user_model.dart';
import '../models/request_model.dart' as request_model;

abstract class RemoteDataSource {
  // User
  Future<Either<Failure, User>> login({required User user});
  Future<Either<Failure, bool>> storeToken(String token);
  Future<Either<Failure, bool>> logout();

  // Requests
  Future<Either<Failure, request_model.RequestList>> getRequestsFromServer();
  Future<Either<Failure, bool>> createRequest(request_model.Request request);
  Future<Either<Failure, request_model.Request>> updateRequest(
      request_model.Request request, DroppedFile? file);

  // Rooms
  Future<Either<Failure, RoomList>> getRoomsFromServer();

  Future<Either<Failure, KRSList>> getKRSFromServer();

  Future<Either<Failure, KelompokList>> getGroupByKrsFromServer(int krsId);

  Future<Either<Failure, request_model.RequestList>>
      getRequestsFromServerByKelompokId(int kelompokId);

  Future<Either<Failure, AssessmentPointList>> getAssessmentPointsFromServer(
      Kelompok kelompok);

  Future<Either<Failure, bool>> storeAssessmentPointsToServer(
      Kelompok kelompok, AssessmentStudentList assessmentStudentList);

  Future<Either<Failure, AssessmentStudentList>>
      getAssessmentStudentsFromServer(Kelompok kelompok);

  Future<Either<Failure, request_model.Request>> getRequestFromServer(
      request_model.Request request);
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final Request request = serviceLocator<Request>();

  // normal login
  @override
  Future<Either<Failure, User>> login({required User user}) async {
    try {
      final response = await request.post(
        '/login',
        data: user.toJson(),
      );
      if (response.statusCode == 200) {
        request.updateAuthorization(response.data['data']['access_token']);
        var data = response.data['data']['user'];
        data['token'] = response.data['data']['access_token'];
        return Right(User.fromJson(data));
      } else {
        // check if meta exist
        if (response.data['meta'] != null) {
          // check if meta exist
          return Left(ConnectionFailure(response.data['meta']['message']));
        } else {
          return Left(ConnectionFailure(response.data['message']));
        }
      }
    } catch (e) {
      return const Left(
        Exception("Terjadi kesalahan pada server, silahkan coba lagi"),
      );
    }
  }

  // store token to server
  @override
  Future<Either<Failure, bool>> storeToken(String token) async {
    try {
      final response = await request.post(
        '/store-token',
        data: {'firebase_token': token},
      );

      if (response.statusCode == 200) {
        return const Right(true);
      } else {
        // check if meta exist
        if (response.data['meta'] != null) {
          return Left(ConnectionFailure(response.data['meta']['message']));
        } else {
          return Left(ConnectionFailure(response.data['message']));
        }
      }
    } catch (e) {
      return const Left(
        Exception("Terjadi kesalahan pada server, silahkan coba lagi"),
      );
    }
  }

  @override
  Future<Either<Failure, bool>> logout() async {
    try {
      final response = await request.post(
        '/logout',
      );

      if (response.statusCode == 200) {
        return const Right(true);
      } else {
        // check if meta exist
        if (response.data['meta'] != null) {
          return Left(ConnectionFailure(response.data['meta']['message']));
        } else {
          return Left(ConnectionFailure(response.data['message']));
        }
      }
    } catch (e) {
      return const Left(
        Exception("Terjadi kesalahan pada server, silahkan coba lagi"),
      );
    }
  }

  @override
  Future<Either<Failure, request_model.RequestList>>
      getRequestsFromServer() async {
    try {
      final Request request = serviceLocator<Request>();
      final response = await request.get('/requests');
      if (response.statusCode == 200) {
        request_model.RequestList requestList = [];
        final data = response.data['data'];
        for (var item in data) {
          requestList.add(request_model.Request.fromJson(item));
        }
        return Right(requestList);
      } else {
        // check if meta exist
        if (response.data['meta'] != null) {
          return Left(ConnectionFailure(response.data['meta']['message']));
        } else {
          return Left(ConnectionFailure(response.data['message']));
        }
      }
    } catch (e) {
      return const Left(
        Exception("Terjadi kesalahan pada server, silahkan coba lagi"),
      );
    }
  }

  @override
  Future<Either<Failure, request_model.RequestList>>
      getRequestsFromServerByKelompokId(int kelompokId) async {
    try {
      final Request request = serviceLocator<Request>();
      final response = await request.get('/requests?kelompok_id=$kelompokId');
      if (response.statusCode == 200) {
        request_model.RequestList requestList = [];
        final data = response.data['data'];
        for (var item in data) {
          requestList.add(request_model.Request.fromJson(item));
        }
        return Right(requestList);
      } else {
        // check if meta exist
        if (response.data['meta'] != null) {
          return Left(ConnectionFailure(response.data['meta']['message']));
        } else {
          return Left(ConnectionFailure(response.data['message']));
        }
      }
    } catch (e) {
      return const Left(
        Exception("Terjadi kesalahan pada server, silahkan coba lagi"),
      );
    }
  }

  @override
  Future<Either<Failure, bool>> createRequest(
      request_model.Request requestModel) async {
    try {
      final Request request = serviceLocator<Request>();
      final user = serviceLocator<LocalDataCacheService>().user;
      var data = requestModel.toJson();

      data['kelompok_id'] = user!.mahasiswa!.kelompok!.id;
      data['ruangan_id'] = requestModel.ruangan!.id;
      final response = await request.post('/requests', data: data);
      debugPrint(response.data.toString());
      if (response.statusCode == 200) {
        return const Right(true);
      } else {
        // check if meta exist
        if (response.data['meta'] != null) {
          return Left(ConnectionFailure(response.data['meta']['message']));
        } else {
          return Left(ConnectionFailure(response.data['message']));
        }
      }
    } catch (e) {
      return const Left(
        Exception("Terjadi kesalahan pada server, silahkan coba lagi"),
      );
    }
  }

  @override
  Future<Either<Failure, request_model.Request>> updateRequest(
      request_model.Request requestModel, DroppedFile? file) async {
    try {
      final Request request = serviceLocator<Request>();
      request.updateContentType('multipart/form-data');

      FormData data = FormData.fromMap({
        'status': requestModel.status,
        'waktu': requestModel.waktu?.toString(),
        'file': file?.name != null
            ? await MultipartFile.fromFile(file!.url, filename: file.name)
            : null,
        'result': requestModel.result,
        'ruangan_id': requestModel.ruangan?.id
      });
      final response =
          await request.post('/requests/${requestModel.id}', data: data);
      if (response.statusCode == 200) {
        request.updateContentType('application/json');
        return Right(request_model.Request.fromJson(response.data['data']));
      } else {
        // check if meta exist
        if (response.data['meta'] != null) {
          return Left(ConnectionFailure(response.data['meta']['message']));
        } else {
          return Left(ConnectionFailure(response.data['message']));
        }
      }
    } catch (e) {
      // return "Terjadi kesalahan pada server, silahkan coba lagi";
      return const Left(
        Exception("Terjadi kesalahan pada server, silahkan coba lagi"),
      );
    }
  }

  @override
  Future<Either<Failure, RoomList>> getRoomsFromServer() async {
    try {
      final Request request = serviceLocator<Request>();
      final response = await request.get('/rooms');
      if (response.statusCode == 200) {
        RoomList roomList = [];
        final data = response.data['data'];
        for (var item in data) {
          roomList.add(Room.fromJson(item));
        }
        return Right(roomList);
      } else {
        // check if meta exist
        if (response.data['meta'] != null) {
          return Left(ConnectionFailure(response.data['meta']['message']));
        } else {
          return Left(ConnectionFailure(response.data['message']));
        }
      }
    } catch (e) {
      return Left(
        Exception(e.toString()),
      );
    }
  }

  @override
  Future<Either<Failure, KRSList>> getKRSFromServer() async {
    try {
      final Request request = serviceLocator<Request>();
      final response = await request.get('/krs');
      if (response.statusCode == 200) {
        KRSList krsList = [];
        final data = response.data['data'];
        for (var item in data) {
          krsList.add(KRS.fromJson(item));
        }
        return Right(krsList);
      } else {
        // check if meta exist
        if (response.data['meta'] != null) {
          return Left(ConnectionFailure(response.data['meta']['message']));
        } else {
          return Left(ConnectionFailure(response.data['message']));
        }
      }
    } catch (e) {
      return Left(
        Exception(e.toString()),
      );
    }
  }

  @override
  Future<Either<Failure, KelompokList>> getGroupByKrsFromServer(
      int krsId) async {
    try {
      final Request request = serviceLocator<Request>();
      final response = await request.get('/krs/$krsId/kelompoks');
      if (response.statusCode == 200) {
        KelompokList kelompokList = [];
        final data = response.data['data'];
        for (var item in data) {
          kelompokList.add(Kelompok.fromJson(item));
        }
        return Right(kelompokList);
      } else {
        // check if meta exist
        if (response.data['meta'] != null) {
          return Left(ConnectionFailure(response.data['meta']['message']));
        } else {
          return Left(ConnectionFailure(response.data['message']));
        }
      }
    } catch (e) {
      return Left(
        Exception(e.toString()),
      );
    }
  }

  @override
  Future<Either<Failure, AssessmentPointList>> getAssessmentPointsFromServer(
      Kelompok kelompok) async {
    try {
      final Request request = serviceLocator<Request>();
      final response = await request.get('/assessment/${kelompok.id}');
      if (response.statusCode == 200) {
        AssessmentPointList assessmentPointList = [];
        final data = response.data['data'];
        for (var item in data) {
          assessmentPointList.add(AssessmentPoint.fromJson(item));
        }
        return Right(assessmentPointList);
      } else {
        // check if meta exist
        if (response.data['meta'] != null) {
          return Left(ConnectionFailure(response.data['meta']['message']));
        } else {
          return Left(ConnectionFailure(response.data['message']));
        }
      }
    } catch (e) {
      return Left(
        Exception(e.toString()),
      );
    }
  }

  @override
  Future<Either<Failure, bool>> storeAssessmentPointsToServer(
      Kelompok kelompok, AssessmentStudentList assessmentStudentList) async {
    try {
      final Request request = serviceLocator<Request>();
      var data = jsonEncode(assessmentStudentList);
      final response = request.post(
        '/assessment/${kelompok.id}',
        data: {
          'assessmentStudents': data,
        },
      );
      return response.then((value) {
        if (value.statusCode == 200) {
          return const Right(true);
        } else {
          return Left(ConnectionFailure(value.data['meta']['message']));
        }
      });
    } catch (e) {
      return Left(
        Exception(e.toString()),
      );
    }
  }

  @override
  Future<Either<Failure, AssessmentStudentList>>
      getAssessmentStudentsFromServer(Kelompok kelompok) async {
    try {
      final Request request = serviceLocator<Request>();
      final response = await request.get('/assessment/${kelompok.id}/students');
      if (response.statusCode == 200) {
        AssessmentStudentList assessmentStudentList = [];
        final data = response.data['data'];
        for (var item in data) {
          assessmentStudentList.add(AssessmentStudent.fromJson(item));
        }
        return Right(assessmentStudentList);
      } else {
        // check if meta exist
        if (response.data['meta'] != null) {
          return Left(ConnectionFailure(response.data['meta']['message']));
        } else {
          return Left(ConnectionFailure(response.data['message']));
        }
      }
    } catch (e) {
      return Left(
        Exception(e.toString()),
      );
    }
  }

  @override
  Future<Either<Failure, request_model.Request>> getRequestFromServer(
      request_model.Request requestModel) async {
    try {
      final Request request = serviceLocator<Request>();
      final response = request.get('/requests/${requestModel.id}');
      return response.then((value) {
        if (value.statusCode == 200) {
          return Right(request_model.Request.fromJson(value.data['data']));
        } else {
          return Left(ConnectionFailure(value.data['meta']['message']));
        }
      });
    } catch (e) {
      return Left(
        Exception(e.toString()),
      );
    }
  }
}
