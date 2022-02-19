part of 'home_page.dart';

class CurrentWeatherWidget extends StatelessWidget {
  const CurrentWeatherWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Column(
        children: const [
          Expanded(
            flex: 2,
            child: WeatherHeaderWidget(),
          ),
          Expanded(
            child: WeatherInfoWidget(),
          )
        ],
      ),
    );
  }
}

class WeatherHeaderWidget extends StatelessWidget {
  const WeatherHeaderWidget({
    Key? key,
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
            'images/10d.png',
            width: 100.0,
            height: 100.0,
            fit: BoxFit.fill,
          ),
          const Text(
            'Heavy Rain',
            style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Sunaday, 02 Oct',
            style: TextStyle(color: Colors.white, fontSize: 16.0),
          ),
          const Expanded(
            child: Center(
              child: Text(
                '24°',
                style: TextStyle(
                    fontSize: 66.0,
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
  const WeatherInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: WeatherInfoItemWidget(
                      iconUrl: 'images/wind_icon.png',
                      title: 'Wind',
                      value: '19.2 km/j',
                      isLeft: false),
                ),
                Expanded(
                  child: WeatherInfoItemWidget(
                      iconUrl: 'images/temperature_icon.png',
                      title: 'Feel like',
                      value: '25',
                      isLeft: true),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: WeatherInfoItemWidget(
                      iconUrl: 'images/uvi_icon.png',
                      title: 'Index UV',
                      value: '2.0',
                      isLeft: false),
                ),
                Expanded(
                  child: WeatherInfoItemWidget(
                      iconUrl: 'images/pressure_icon.png',
                      title: 'Pressure',
                      value: '1014 mbar',
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
