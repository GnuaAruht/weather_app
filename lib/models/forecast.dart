import 'package:intl/intl.dart';

class Forecast {
  final int dt;
  final double temp;
  final double wind;
  final double feelsLike;
  final double pressure;
  final double uvi;
  final String description;
  final String icon;

  Forecast({
    required this.dt,
    required this.temp,
    required this.wind,
    required this.feelsLike,
    required this.pressure,
    required this.uvi,
    required this.description,
    required this.icon,
  });

  factory Forecast.fromJson(Map<String, dynamic> json) {
    return Forecast(
        dt: json['dt'].toInt(),
        temp: json['temp'].toDouble(),
        wind: json['wind_speed'].toDouble(),
        feelsLike: json['feels_like'].toDouble(),
        pressure: json['pressure'].toDouble(),
        uvi: json['uvi'].toDouble(),
        description: json['weather'][0]['description'],
        icon: json['weather'][0]['icon']);
  }
}

extension ForecastX on Forecast {
  String get iconUrl => 'assets/$icon.png';
  DateTime get date => DateTime.fromMillisecondsSinceEpoch(dt * 1000);
  String get formattedDate => DateFormat('EEEE, dd MMM').format(date);
  String get formattedTime => DateFormat('HH:mm').format(date);
}
