import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'weather.dart';
import 'forecast.dart';

part 'openweather_api.g.dart';

@RestApi(baseUrl: 'https://api.openweathermap.org')
abstract class OpenWeatherApi {
  factory OpenWeatherApi(Dio dio) = _OpenWeatherApi;

  @GET('/data/2.5/weather')
  Future<Weather> getWeather(
    @Query('q') String city,
    @Query('appid') String apiKey,
    @Query('units') String unit,
    @Query('lang') String lang,
  );

  @GET('/data/2.5/forecast')
  Future<Forecast> getForecast(
    @Query('q') String city,
    @Query('appid') String apiKey,
    @Query('units') String unit,
    @Query('lang') String lang,
  );
}
