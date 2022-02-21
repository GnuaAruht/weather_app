part of 'forecast_page.dart';

class ForecastListWidget extends StatelessWidget {
  final List<DailyForecast> daily;
  const ForecastListWidget({
    Key? key,
    required this.daily,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          daily.length,
          (index) => ForecastItemWidget(
                dailyForecast: daily[index],
              )),
    );
  }
}

class ForecastItemWidget extends StatelessWidget {
  final DailyForecast dailyForecast;
  const ForecastItemWidget({
    Key? key,
    required this.dailyForecast,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding:
          const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
      leading: Image.asset(
        dailyForecast.iconUrl,
        width: 56.0,
        height: 56.0,
        fit: BoxFit.cover,
      ),
      title: RichText(
          text: TextSpan(children: [
        TextSpan(
            text: '${dailyForecast.weekDay},',
            style:
                const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500)),
        TextSpan(
            text: ' ${dailyForecast.formattedDate}',
            style:
                const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400)),
      ])),
      trailing: RichText(
          text: TextSpan(children: [
        TextSpan(
            text: "${dailyForecast.temp.toInt()}",
            style:
                const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500)),
        TextSpan(
            text: ' / ${dailyForecast.feelsLike.toInt()}° ',
            style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400))
      ])),
    );
  }
}
