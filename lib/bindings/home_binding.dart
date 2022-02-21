import 'package:get/get.dart';
import 'package:weather_app/api/weather_provider.dart';
import 'package:weather_app/controllers/weather_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.create(() => WeatherProvider());
    Get.put(WeatherController(Get.find()));
  }
}
