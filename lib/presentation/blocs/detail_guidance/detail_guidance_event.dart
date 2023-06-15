import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/dropped_file_model.dart';
import '../../../data/models/request_model.dart';
part 'detail_guidance_event.freezed.dart';

@freezed
class DetailGuidanceEvent with _$DetailGuidanceEvent {
  const factory DetailGuidanceEvent.getData({required Request request}) =
      GetDataEvent;
  const factory DetailGuidanceEvent.updateData({
    required int id,
    required String status,
    required String? waktu,
    required DroppedFile? file,
    required String? result,
  }) = UpdateDataEvent;
  const factory DetailGuidanceEvent.resetState() = ResetStateEvent;
}
