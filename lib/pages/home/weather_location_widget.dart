part of 'home_page.dart';

class WeatherLocationWidget extends StatelessWidget {
  const WeatherLocationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text.rich(TextSpan(children: [
      TextSpan(
          text: 'Mandalay, ',
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
      TextSpan(
          text: 'Myanmar',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal)),
    ]));
  }
}
