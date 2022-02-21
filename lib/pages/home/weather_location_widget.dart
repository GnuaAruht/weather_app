part of 'home_page.dart';

class WeatherLocationWidget extends StatelessWidget {
  final Location location;
  const WeatherLocationWidget({Key? key, required this.location})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(children: [
      TextSpan(
          text: '${location.city},',
          style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
      TextSpan(
          text: location.coutry,
          style:
              const TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal)),
    ]));
  }
}
