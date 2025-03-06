// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeapi_datetime.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimeapiDatetime _$TimeapiDatetimeFromJson(Map<String, dynamic> json) {
  return _TimeapiDatetime.fromJson(json);
}

/// @nodoc
mixin _$TimeapiDatetime {
  @JsonKey(name: "dateTime")
  DateTime get dateTime => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: "time")
  String get time => throw _privateConstructorUsedError;
  @JsonKey(name: "timeZone")
  String get timeZone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeapiDatetimeCopyWith<TimeapiDatetime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeapiDatetimeCopyWith<$Res> {
  factory $TimeapiDatetimeCopyWith(
          TimeapiDatetime value, $Res Function(TimeapiDatetime) then) =
      _$TimeapiDatetimeCopyWithImpl<$Res, TimeapiDatetime>;
  @useResult
  $Res call(
      {@JsonKey(name: "dateTime") DateTime dateTime,
      @JsonKey(name: "date") String date,
      @JsonKey(name: "time") String time,
      @JsonKey(name: "timeZone") String timeZone});
}

/// @nodoc
class _$TimeapiDatetimeCopyWithImpl<$Res, $Val extends TimeapiDatetime>
    implements $TimeapiDatetimeCopyWith<$Res> {
  _$TimeapiDatetimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? date = null,
    Object? time = null,
    Object? timeZone = null,
  }) {
    return _then(_value.copyWith(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      timeZone: null == timeZone
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeapiDatetimeImplCopyWith<$Res>
    implements $TimeapiDatetimeCopyWith<$Res> {
  factory _$$TimeapiDatetimeImplCopyWith(_$TimeapiDatetimeImpl value,
          $Res Function(_$TimeapiDatetimeImpl) then) =
      __$$TimeapiDatetimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "dateTime") DateTime dateTime,
      @JsonKey(name: "date") String date,
      @JsonKey(name: "time") String time,
      @JsonKey(name: "timeZone") String timeZone});
}

/// @nodoc
class __$$TimeapiDatetimeImplCopyWithImpl<$Res>
    extends _$TimeapiDatetimeCopyWithImpl<$Res, _$TimeapiDatetimeImpl>
    implements _$$TimeapiDatetimeImplCopyWith<$Res> {
  __$$TimeapiDatetimeImplCopyWithImpl(
      _$TimeapiDatetimeImpl _value, $Res Function(_$TimeapiDatetimeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? date = null,
    Object? time = null,
    Object? timeZone = null,
  }) {
    return _then(_$TimeapiDatetimeImpl(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      timeZone: null == timeZone
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeapiDatetimeImpl implements _TimeapiDatetime {
  const _$TimeapiDatetimeImpl(
      {@JsonKey(name: "dateTime") required this.dateTime,
      @JsonKey(name: "date") required this.date,
      @JsonKey(name: "time") required this.time,
      @JsonKey(name: "timeZone") required this.timeZone});

  factory _$TimeapiDatetimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeapiDatetimeImplFromJson(json);

  @override
  @JsonKey(name: "dateTime")
  final DateTime dateTime;
  @override
  @JsonKey(name: "date")
  final String date;
  @override
  @JsonKey(name: "time")
  final String time;
  @override
  @JsonKey(name: "timeZone")
  final String timeZone;

  @override
  String toString() {
    return 'TimeapiDatetime(dateTime: $dateTime, date: $date, time: $time, timeZone: $timeZone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeapiDatetimeImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.timeZone, timeZone) ||
                other.timeZone == timeZone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dateTime, date, time, timeZone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeapiDatetimeImplCopyWith<_$TimeapiDatetimeImpl> get copyWith =>
      __$$TimeapiDatetimeImplCopyWithImpl<_$TimeapiDatetimeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeapiDatetimeImplToJson(
      this,
    );
  }
}

abstract class _TimeapiDatetime implements TimeapiDatetime {
  const factory _TimeapiDatetime(
          {@JsonKey(name: "dateTime") required final DateTime dateTime,
          @JsonKey(name: "date") required final String date,
          @JsonKey(name: "time") required final String time,
          @JsonKey(name: "timeZone") required final String timeZone}) =
      _$TimeapiDatetimeImpl;

  factory _TimeapiDatetime.fromJson(Map<String, dynamic> json) =
      _$TimeapiDatetimeImpl.fromJson;

  @override
  @JsonKey(name: "dateTime")
  DateTime get dateTime;
  @override
  @JsonKey(name: "date")
  String get date;
  @override
  @JsonKey(name: "time")
  String get time;
  @override
  @JsonKey(name: "timeZone")
  String get timeZone;
  @override
  @JsonKey(ignore: true)
  _$$TimeapiDatetimeImplCopyWith<_$TimeapiDatetimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
