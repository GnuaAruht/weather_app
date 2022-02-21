import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/api_constants.dart';
import '../../controllers/weather_controller.dart';
import '../../models/forecast.dart';
import '../../models/location.dart';
import '../../models/weather.dart';
import '../../widgets/loading_widget.dart';
import '../forecast/forecast_page.dart';

part 'current_weather_widget.dart';
part 'hourly_forecast_widget.dart';
part 'weather_location_widget.dart';

class HomePage extends GetView<WeatherController> {
  final Location location;
  const HomePage({Key? key, Location? pLocation})
      : location = pLocation ?? DEFAULT_LOCATION,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: RefreshIndicator(
        onRefresh: () async {
          controller.fetchWeather(location);
        },
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: controller.obx(
            (state) => _buildForWeatherResult(state!),
            onLoading: _buildForLoading(),
            onError: _buildForError,
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      leading: const Icon(
        Icons.menu,
        color: Colors.black,
      ),
    );
  }

  Widget _buildForWeatherResult(Weather weather) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 12.0,
          ),
          child: WeatherLocationWidget(
            location: location,
          ),
        ),
        AspectRatio(
          aspectRatio: 0.88,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 28.0,
              vertical: 8.0,
            ),
            child: CurrentWeatherWidget(
              forecast: weather.current,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 24.0,
          ),
          child: HourlyForecastWidget(
            hourly: weather.hourly,
          ),
        ),
      ],
    );
  }

  Widget _buildForLoading() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 12.0,
          ),
          child: Align(
            alignment: Alignment.center,
            child: LoadingWidget(
              height: 26.0,
              width: 180.0,
            ),
          ),
        ),
        AspectRatio(
          aspectRatio: 0.88,
          child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 28.0,
                vertical: 8.0,
              ),
              child: LoadingWidget()),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 28.0),
          child: LoadingWidget(
            height: 156.0,
          ),
        ),
      ],
    );
  }

  Widget _buildForError(String? err) {
    return _buildForLoading();
  }
}
