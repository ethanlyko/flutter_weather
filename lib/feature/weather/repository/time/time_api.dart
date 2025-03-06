import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'timeapi_datetime.dart';

part 'time_api.g.dart';

@RestApi(baseUrl: 'https://timeapi.io')
abstract class TimeApi {
  factory TimeApi(Dio dio) = _TimeApi;

  @GET('/api/Time/current/coordinate')
  Future<TimeapiDatetime> getDateTime(
    @Query('latitude') double lat,
    @Query('longitude') double lon,
  );
}
