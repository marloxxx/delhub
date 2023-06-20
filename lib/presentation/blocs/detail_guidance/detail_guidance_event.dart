import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/request_model.dart';
part 'detail_guidance_event.freezed.dart';

@freezed
class DetailGuidanceEvent with _$DetailGuidanceEvent {
  const factory DetailGuidanceEvent.getData({required Request request}) =
      GetDataEvent;
  const factory DetailGuidanceEvent.updateData({
    required Request request,
  }) = UpdateDataEvent;
}
