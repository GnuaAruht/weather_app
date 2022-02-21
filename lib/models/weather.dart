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
      current: Forecast.fromJson(json['current']),
      hourly: (json['hourly'] as List<dynamic>)
          .map((data) => Forecast.fromJson(data))
          .toList(),
      daily: (json['daily'] as List<dynamic>)
          .map((data) => DailyForecast.fromJson(data))
          .toList(),
    );
  }

  static Weather fromJsonData(dynamic jsonData) => Weather.fromJson(jsonData);
}
