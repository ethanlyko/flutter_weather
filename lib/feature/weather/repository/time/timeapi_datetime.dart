import 'package:freezed_annotation/freezed_annotation.dart';

part 'timeapi_datetime.freezed.dart';
part 'timeapi_datetime.g.dart';

@freezed
class TimeapiDatetime with _$TimeapiDatetime {
  const factory TimeapiDatetime({
    @JsonKey(name: "dateTime") required DateTime dateTime,
    @JsonKey(name: "date") required String date,
    @JsonKey(name: "time") required String time,
    @JsonKey(name: "timeZone") required String timeZone,
  }) = _TimeapiDatetime;

  factory TimeapiDatetime.fromJson(Map<String, dynamic> json) =>
      _$TimeapiDatetimeFromJson(json);
}
