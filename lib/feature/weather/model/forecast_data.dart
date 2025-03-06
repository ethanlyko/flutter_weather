import 'weather_data.dart';
import '../repository/openweather/forecast.dart';

class ForecastData {
  final List<WeatherData> weathers;

  const ForecastData(this.weathers);
  factory ForecastData.from(Forecast forecast) {
    return ForecastData(forecast.list.map((e) => WeatherData.from(e)).toList());
  }
}
