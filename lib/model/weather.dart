import 'daily_forecaset.dart';
import 'forecast.dart';

class Weather {
  final Forecast current;
  final List<Forecast> hourly;
  final List<DailyForecast> daily;

  Weather({
    required this.current,
    required this.hourly,
    required this.daily,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      current: json['current'],
      hourly: json['hourly'],
      daily: json['daily'],
    );
  }
}
