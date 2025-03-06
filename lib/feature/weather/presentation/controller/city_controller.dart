import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../util/preference/shared_preference.dart';

part 'city_controller.g.dart';

@riverpod
class CityController extends _$CityController {
  @override
  String build() {
    String city = SharedPref.getCity();
    return city;
  }

  void setCity(String city) {
    state = city;
  }
}
