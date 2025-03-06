import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../util/preference/shared_preference.dart';
import '../../model/forecast_data.dart';
import '../../repository/openweather/forecast.dart';
import '../../../common/api_result.dart';
import '../../usecase/weather_service.dart';
import 'city_controller.dart';

part 'forecast_controller.g.dart';

@riverpod
class ForecastController extends _$ForecastController {
  @override
  FutureOr<ForecastData> build() async {
    final city = ref.watch(cityControllerProvider);
    final lang = SharedPref.getLocale();
    final result = await ref
        .watch(weatherServiceProvider)
        .getForecast(city: city, lang: lang!);

    switch (result) {
      case Success<Forecast>():
        return ForecastData.from(result.data);

      case Failure<Forecast>():
        throw result.e;
    }
  }
}
