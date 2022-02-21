import 'package:intl/intl.dart';

class DailyForecast {
  final int dt;
  final double temp;
  final double feelsLike;
  final String icon;

  DailyForecast({
    required this.dt,
    required this.temp,
    required this.feelsLike,
    required this.icon,
  });

  factory DailyForecast.fromJson(Map<String, dynamic> json) {
    return DailyForecast(
      dt: json['dt'].toInt(),
      temp: json['temp']['day'].toDouble(),
      feelsLike: json['feels_like']['day'].toDouble(),
      icon: json['weather'][0]['icon'],
    );
  }
}

extension DailyForecastX on DailyForecast {
  String get iconUrl => 'assets/$icon.png';
  DateTime get date => DateTime.fromMillisecondsSinceEpoch(dt * 1000);
  String get weekDay => DateFormat('EEEE').format(date);
  String get formattedDate => DateFormat('dd MMM').format(date);
}
