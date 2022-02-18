import 'package:flutter/material.dart';

part 'forecast_list_widget.dart';

class ForecastPage extends StatelessWidget {
  const ForecastPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Next 7 Days',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600),
            ),
            ForecastListWidget()
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.lightBlue,
      elevation: 0.0,
      centerTitle: true,
      title: RichText(
          text: const TextSpan(children: [
        TextSpan(
            text: 'Mandalay, ',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
        TextSpan(
            text: 'Myanmar',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal)),
      ])),
    );
  }
}
