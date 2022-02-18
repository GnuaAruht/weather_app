import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../forecast/forecast_page.dart';

part 'current_weather_widget.dart';
part 'hourly_forecast_widget.dart';
part 'weather_location_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 12.0,
              ),
              child: WeatherLocationWidget(),
            ),
            AspectRatio(
                aspectRatio: 0.88,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 28.0,
                    vertical: 8.0,
                  ),
                  child: CurrentWeatherWidget(),
                )),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 16.0,
              ),
              child: HourlyForecastWidget(),
            )
          ],
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
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz_rounded,
              color: Colors.black,
            ))
      ],
    );
  }
}
