import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../util/preference/shared_preference.dart';
import '../../../common/app_style.dart';
import '../../model/weather_data.dart';
import '../controller/forecast_controller.dart';
import 'weather_icon_widget.dart';

class ForecastWidget extends ConsumerWidget {
  const ForecastWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final forecaseValue = ref.watch(forecastControllerProvider);
    return forecaseValue.when(
      data: (forecastData) {
        final items = [0, 8, 16];
        return WeatherItemRow([for (var i in items) forecastData.weathers[i]]);
      },
      error: (e, s) => Text(e.toString()),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}

class WeatherItemRow extends StatelessWidget {
  final List<WeatherData> weathers;
  const WeatherItemRow(this.weathers, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: weathers.map((e) => WeatherItemWidget(e)).toList(),
    );
  }
}

class WeatherItemWidget extends StatelessWidget {
  final WeatherData weather;

  const WeatherItemWidget(this.weather, {super.key});

  @override
  Widget build(BuildContext context) {
    final lang = SharedPref.getLocale();
    Widget w;
    w = Expanded(
      child: Card(
        color: Colors.blue.shade700.withOpacity(0.3),
        child: Column(
          children: [
            const SizedBox(height: 8),
            Text(DateFormat.E(lang!).format(weather.dateTime!),
                style: AppStyle.textSmaller),
            const SizedBox(height: 8),
            WeatherIconWidget(iconUrl: weather.iconUrl, size: 48),
            const SizedBox(height: 8),
            Text('${weather.temp.toStringAsFixed(1)} \u2103',
                style: AppStyle.textSmaller)
          ],
        ),
      ),
    );

    return w;
  }
}
