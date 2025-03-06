import 'package:flutter/material.dart';

import '../../../setting/presentation/page/setting_page.dart';
import '../../../weather/presentation/page/weather_page.dart';
import '../../../widget/myapp_bottom_navigation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget w = Scaffold(
      body: _homeBody(),
      bottomNavigationBar: MyappBottomNavigationBar(
        currentIndex: _currentIndex,
        onTapped: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );

    return w;
  }

  Widget _homeBody() {
    switch (_currentIndex) {
      case 1:
        return const SettingPage();

      default:
        return const WeatherPage();
    }
  }
}
