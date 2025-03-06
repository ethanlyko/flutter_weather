import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../generated/l10n.dart';
import '../../../../util/preference/shared_preference.dart';
import '../../../common/app_style.dart';
import '../controller/weather_controller.dart';
import 'weather_icon_widget.dart';

class WeatherWidget extends ConsumerWidget {
  const WeatherWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherData = ref.watch(weatherControllerProvider);

    final lang = SharedPref.getLocale();
    Widget weather = weatherData.when(
        data: (info) {
          return Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                (info.dateTime != null)
                    ? Text(
                        DateFormat.MMMEd(lang!).add_jm().format(info.dateTime!),
                        style: AppStyle.textMedium,
                      )
                    : const SizedBox.shrink(),
                WeatherIconWidget(iconUrl: info.iconUrl, size: 120),
                Text(info.description, style: AppStyle.textSmall),
                const SizedBox(height: 8),
                Text('${info.temp.toStringAsFixed(1)} \u2103',
                    style: AppStyle.textSmall),
                const SizedBox(height: 8),
                Text(
                  "${S.of(context).weather_temp_high}: ${info.tempMax.toStringAsFixed(1)} \u2103, ${S.of(context).weather_temp_low}: ${info.tempMin.toStringAsFixed(1)} \u2103",
                  style: AppStyle.textSmall,
                ),
              ],
            ),
          );
        },
        loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
        error: (e, s) {
          return Center(child: Text(e.toString()));
        });

    return weather;
  }
}
