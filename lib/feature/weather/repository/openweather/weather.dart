import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  const factory Weather({
    @JsonKey(name: "coord") Coord? coord,
    @JsonKey(name: "weather") required List<WeatherElement> weather,
    @JsonKey(name: "main") required Main main,
    @JsonKey(name: "dt") required int dt,
    @JsonKey(name: "name") String? name,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  static String getIconUrl(String icon) =>
      "https://openweathermap.org/img/wn/$icon@2x.png";
}

@freezed
class Coord with _$Coord {
  const factory Coord({
    @JsonKey(name: "lon") required double lon,
    @JsonKey(name: "lat") required double lat,
  }) = _Coord;

  factory Coord.fromJson(Map<String, dynamic> json) => _$CoordFromJson(json);
}

@freezed
class Main with _$Main {
  const factory Main({
    @JsonKey(name: "temp") required double temp,
    @JsonKey(name: "temp_min") required double tempMin,
    @JsonKey(name: "temp_max") required double tempMax,
  }) = _Main;

  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);
}

@freezed
class WeatherElement with _$WeatherElement {
  const factory WeatherElement({
    @JsonKey(name: "main") required String main,
    @JsonKey(name: "description") required String description,
    @JsonKey(name: "icon") required String icon,
  }) = _WeatherElement;

  factory WeatherElement.fromJson(Map<String, dynamic> json) =>
      _$WeatherElementFromJson(json);
}
