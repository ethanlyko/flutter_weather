// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeapi_datetime.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimeapiDatetimeImpl _$$TimeapiDatetimeImplFromJson(
        Map<String, dynamic> json) =>
    _$TimeapiDatetimeImpl(
      dateTime: DateTime.parse(json['dateTime'] as String),
      date: json['date'] as String,
      time: json['time'] as String,
      timeZone: json['timeZone'] as String,
    );

Map<String, dynamic> _$$TimeapiDatetimeImplToJson(
        _$TimeapiDatetimeImpl instance) =>
    <String, dynamic>{
      'dateTime': instance.dateTime.toIso8601String(),
      'date': instance.date,
      'time': instance.time,
      'timeZone': instance.timeZone,
    };
