import 'package:flutter/material.dart';

import '../../../common/app_style.dart';
import '../../../widget/myapp_bar.dart';
import '../widget/city_search_widget.dart';
import '../widget/forecast_widget.dart';
import '../widget/weather_widget.dart';
import '../../../../generated/l10n.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget w = Scaffold(
      backgroundColor: AppStyle.contentBackgroundColor,
      appBar: MyappBar(
        title: Text(S.of(context).weather_title, style: AppStyle.textMedium),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        child: const SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 10),
              Flexible(flex: 1, child: CitySearchWidget()),
              Flexible(flex: 4, child: WeatherWidget()),
              Flexible(flex: 2, child: ForecastWidget()),
            ],
          ),
        ),
      ),
    );

    return w;
  }
}
