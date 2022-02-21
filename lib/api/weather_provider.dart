import 'package:get/get_connect.dart';

import '../constants/api_constants.dart';
import '../constants/app_id.dart';
import '../models/location.dart';
import '../models/weather.dart';

class WeatherProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = Weather.fromJsonData;
    httpClient.baseUrl = BASE_URL;
    super.onInit();
  }

  Future<Response<Weather>> getWeather(Location location) => get<Weather>(
      '$ONECALL_ENDPOINT?lat=${location.lat}&lon=${location.lon}&exclude=minutely,alerts&appid=$APP_ID&units=metric');
}
