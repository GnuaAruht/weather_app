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
