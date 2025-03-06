import '../repository/openweather/weather.dart';

class WeatherData {
  final double temp;
  final double tempMin;
  final double tempMax;
  final String description;
  final String iconUrl;
  DateTime? dateTime;
  String? name;

  @override
  String toString() {
    name ??= "";
    return "$name temp=${temp.toStringAsFixed(1)}, tempMax=${tempMax.toStringAsFixed(1)}, tempMin=${tempMin.toStringAsFixed(1)}, descprition=$description";
  }

  WeatherData({
    required this.temp,
    required this.tempMax,
    required this.tempMin,
    required this.description,
    required this.iconUrl,
    this.dateTime,
    this.name,
  });

  factory WeatherData.from(Weather weather) {
    String iconUrl = Weather.getIconUrl(weather.weather[0].icon);
    return WeatherData(
      temp: weather.main.temp,
      tempMax: weather.main.tempMax,
      tempMin: weather.main.tempMin,
      description: weather.weather[0].description,
      dateTime: DateTime.fromMillisecondsSinceEpoch(weather.dt * 1000),
      iconUrl: iconUrl,
      name: weather.name,
    );
  }
}
