import 'package:get/get_connect.dart';

import '../constants/api_constants.dart';
import '../constants/app_id_sample.dart';
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
      '$ONECALL_ENDPOINT?lat=${location.lat}&lon=${location.lon}&appid=$APP_ID');
}
