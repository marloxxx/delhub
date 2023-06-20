import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/dropped_file_model.dart';
import '../../../data/models/request_model.dart';

part 'status_upload_event.freezed.dart';

@freezed
class StatusUploadEvent with _$StatusUploadEvent {
  const factory StatusUploadEvent.getData({required Request request}) =
      GetDataEvent;
  const factory StatusUploadEvent.updateData({
    required Request request,
    required DroppedFile? file,
  }) = UpdateDataEvent;
}
