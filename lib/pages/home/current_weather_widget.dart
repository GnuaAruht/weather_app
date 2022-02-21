part of 'home_page.dart';

class CurrentWeatherWidget extends StatelessWidget {
  final Forecast forecast;
  const CurrentWeatherWidget({Key? key, required this.forecast})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: WeatherHeaderWidget(
              iconUrl: forecast.iconUrl,
              description: forecast.description,
              formattedDate: forecast.formattedDate,
              temp: forecast.temp,
            ),
          ),
          Expanded(
            child: WeatherInfoWidget(
              wind: forecast.wind,
              feelsLike: forecast.feelsLike,
              uvi: forecast.uvi,
              pressure: forecast.pressure,
            ),
          )
        ],
      ),
    );
  }
}

class WeatherHeaderWidget extends StatelessWidget {
  final String iconUrl;
  final String description;
  final String formattedDate;
  final double temp;
  const WeatherHeaderWidget({
    Key? key,
    required this.iconUrl,
    required this.description,
    required this.formattedDate,
    required this.temp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 50, 109, 235),
      alignment: Alignment.center,
      padding: const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            iconUrl,
            width: 80.0,
            height: 80.0,
            fit: BoxFit.fill,
          ),
          Text(
            description.capitalizeFirst!,
            style: const TextStyle(
                fontSize: 24.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            formattedDate,
            style: const TextStyle(color: Colors.white, fontSize: 16.0),
          ),
          Expanded(
            child: Center(
              child: Text(
                '${temp.toInt()}°',
                style: const TextStyle(
                    fontSize: 64.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class WeatherInfoWidget extends StatelessWidget {
  final double wind;
  final double feelsLike;
  final double uvi;
  final double pressure;
  const WeatherInfoWidget({
    Key? key,
    required this.wind,
    required this.feelsLike,
    required this.uvi,
    required this.pressure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: WeatherInfoItemWidget(
                      iconUrl: 'assets/wind_icon.png',
                      title: 'Wind',
                      value: '${wind}km/j',
                      isLeft: false),
                ),
                Expanded(
                  child: WeatherInfoItemWidget(
                      iconUrl: 'assets/temperature_icon.png',
                      title: 'Feels like',
                      value: '$feelsLike°',
                      isLeft: true),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: WeatherInfoItemWidget(
                      iconUrl: 'assets/uvi_icon.png',
                      title: 'Index UV',
                      value: '$uvi',
                      isLeft: false),
                ),
                Expanded(
                  child: WeatherInfoItemWidget(
                      iconUrl: 'assets/pressure_icon.png',
                      title: 'Pressure',
                      value: '${pressure}mbar',
                      isLeft: true),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WeatherInfoItemWidget extends StatelessWidget {
  final String iconUrl;
  final String title;
  final String value;
  final bool isLeft;
  const WeatherInfoItemWidget({
    Key? key,
    required this.iconUrl,
    required this.title,
    required this.value,
    required this.isLeft,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      margin: EdgeInsets.only(
        top: 1.0,
        left: isLeft ? 0.5 : 0.0,
        right: isLeft ? 0.0 : 0.5,
      ),
      color: const Color.fromARGB(255, 50, 109, 235),
      alignment: Alignment.center,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            iconUrl,
            width: 32,
            height: 32,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 12.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.white70,
                    fontWeight: FontWeight.normal),
              ),
              Text(
                value,
                style: const TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    );
  }
}
