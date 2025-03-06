import 'dart:io';

import 'package:dio/dio.dart';

import '../repository/time/time_api.dart';
import '../repository/time/timeapi_datetime.dart';

import '../../common/api_result.dart';

class TimeService {
  late final TimeApi _client;
  late final Dio _dio;

  TimeService._intrnal() {
    _dio = Dio();
    _client = TimeApi(_dio);
  }

  static final TimeService _instance = TimeService._intrnal();
  factory TimeService() => _instance;

  Future<ApiResult<TimeapiDatetime>> getTime(double lat, double lon) async {
    try {
      final result = await _client.getDateTime(lat, lon);
      return Success(data: result);
    } on SocketException catch (e) {
      return Failure(e);
    } on DioException catch (e) {
      switch (e.type) {
        case DioExceptionType.badResponse:
          switch (e.response?.statusCode) {
            case 400:
              return Failure(
                  ApiException("Not found", errorCode: e.response?.statusCode));
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
