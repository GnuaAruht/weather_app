part of 'forecast_page.dart';

class ForecastListWidget extends StatelessWidget {
  const ForecastListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(7, (index) => const ForecastItemWidget()),
    );
  }
}

class ForecastItemWidget extends StatelessWidget {
  const ForecastItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding:
          const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
      leading: Image.asset(
        'assets/50d.png',
        width: 56.0,
        height: 56.0,
        fit: BoxFit.cover,
      ),
      title: RichText(
          text: const TextSpan(children: [
        TextSpan(
            text: 'Wednesday,',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500)),
        TextSpan(
            text: ' 10 Oct',
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400)),
      ])),
      trailing: RichText(
          text: const TextSpan(children: [
        TextSpan(
            text: '30',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500)),
        TextSpan(
            text: ' / 24° ',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400))
      ])),
    );
  }
}
