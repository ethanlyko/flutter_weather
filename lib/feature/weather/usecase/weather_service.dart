// ignore_for_file: avoid_print

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repository/openweather/forecast.dart';
import '../../common/api_result.dart';
import '../repository/openweather/weather.dart';
import '../repository/openweather/openweather_api.dart';

class WeatherService {
  static const String _unit = "metric";

  final String? _apiKey = dotenv.env['OpenWeather_API'];
  late final OpenWeatherApi _client;
  late final Dio _dio;

  WeatherService._intrnal() {
    _dio = Dio();
    _client = OpenWeatherApi(_dio);
  }

  static final WeatherService _instance = WeatherService._intrnal();
  factory WeatherService() => _instance;

  Future<ApiResult<Weather>> getWeather({
    required String city,
    String? apiKey,
    String unit = _unit,
    String lang = "",
  }) {
    apiKey ??= _apiKey;
    return _getData(_client.getWeather,
        city: city, apiKey: apiKey!, unit: unit, lang: lang);
  }

  Future<ApiResult<Forecast>> getForecast({
    required String city,
    String? apiKey,
    String unit = _unit,
    String lang = "",
  }) {
    apiKey ??= _apiKey;
    return _getData(_client.getForecast,
        city: city, apiKey: apiKey!, unit: unit, lang: lang);
  }

  Future<ApiResult<T>> _getData<T>(
    Future<T> Function(String city, String apiKey, String unit, String lang)
        get, {
    required String city,
    required String apiKey,
    required String unit,
    required String lang,
  }) async {
    try {
      final result = await get(city, apiKey, unit, lang);
      return Success(data: result);
    } on SocketException catch (e) {
      return Failure(e);
    } on DioException catch (e) {
      switch (e.type) {
        case DioExceptionType.badResponse:
          switch (e.response?.statusCode) {
            case 400:
              return Failure(ApiException("Bad request",
                  errorCode: e.response?.statusCode));
            case 401:
              return Failure(ApiException("Unauthorized",
                  errorCode: e.response?.statusCode));
            case 404:
              return Failure(
                  ApiException("Not found", errorCode: e.response?.statusCode));
            default:
              return Failure(
                  ApiException("Unknown", errorCode: e.response?.statusCode));
          }

        default:
          break;
      }
      return Failure(
          ApiException(e.toString(), errorCode: e.response?.statusCode));
    } catch (e) {
      return Failure(Exception(e.toString()));
    }
  }
}

final weatherServiceProvider = Provider((ref) => WeatherService());
