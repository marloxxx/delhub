import 'package:freezed_annotation/freezed_annotation.dart';
part 'history_event.freezed.dart';

@freezed
class HistoryEvent with _$HistoryEvent {
  const factory HistoryEvent.getData() = GetDataEvent;
  const factory HistoryEvent.getDataByKelompokId(int kelompokId) =
      GetDataByKelompokIdEvent;
}
