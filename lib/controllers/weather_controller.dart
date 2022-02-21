import 'package:get/get_state_manager/get_state_manager.dart';

import '../api/weather_provider.dart';
import '../models/location.dart';
import '../models/weather.dart';

class WeatherController extends GetxController with StateMixin<Weather> {
  final WeatherProvider weatherProvider;

  WeatherController(this.weatherProvider);

  void fetchWeather(Location location) {
    weatherProvider.getWeather(location).then((result) {
      Weather weather = result.body!;
      change(weather, status: RxStatus.success());
    }, onError: (err) {
      change(null, status: RxStatus.error(err.toString()));
    });
  }
}
