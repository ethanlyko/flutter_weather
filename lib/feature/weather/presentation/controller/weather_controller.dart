import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../util/preference/shared_preference.dart';
import '../../model/weather_data.dart';
import '../../repository/openweather/weather.dart';
import '../../repository/time/timeapi_datetime.dart';
import '../../../common/api_result.dart';
import '../../usecase/time_service.dart';
import '../../usecase/weather_service.dart';
import 'city_controller.dart';

part 'weather_controller.g.dart';

@riverpod
class WeatherController extends _$WeatherController {
  @override
  Future<WeatherData> build() async {
    final city = ref.watch(cityControllerProvider);
    final lang = SharedPref.getLocale();
    final result = await ref
        .watch(weatherServiceProvider)
        .getWeather(city: city, lang: lang!);

    switch (result) {
      case Success<Weather>():
        SharedPref.setCity(city);
        final weatherData = WeatherData.from(result.data);
        final timeResult = await TimeService()
            .getTime(result.data.coord!.lat, result.data.coord!.lon);
        switch (timeResult) {
          case Success<TimeapiDatetime>():
            weatherData.dateTime = timeResult.data.dateTime;
            break;

          default:
            break;
        }

        return weatherData;

      case Failure<Weather>():
        throw result.e;
    }
  }
}
