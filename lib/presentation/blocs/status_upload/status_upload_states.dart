import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/request_model.dart';

part 'status_upload_states.freezed.dart';

@freezed
abstract class StatusUploadState with _$StatusUploadState {
  const factory StatusUploadState.initial() = StatusUploadInitialState;
  const factory StatusUploadState.loading() = StatusUploadLoadingState;
  const factory StatusUploadState.error(String message) =
      StatusUploadErrorState;
  const factory StatusUploadState.loaded({
    required Request request,
    required bool isUpdated,
  }) = StatusUploadLoadedState;
}
