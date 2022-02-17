import 'package:flutter/material.dart';

class ForecastPage extends StatelessWidget {
  const ForecastPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0.0,
        centerTitle: true,
        title: RichText(
            text: const TextSpan(children: [
          TextSpan(
              text: 'Mandalay, ',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
          TextSpan(
              text: 'Myanmar',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal)),
        ])),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Next 7 Days',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600),
            ),
            Column(
              children: List.generate(
                  7,
                  (index) => ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                        ),
                        leading: Image.asset(
                          'images/02d.png',
                          width: 50.0,
                          height: 50.0,
                          fit: BoxFit.cover,
                        ),
                        title: RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                              text: 'Wednesday,',
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.w500)),
                          TextSpan(
                              text: ' 10 Oct',
                              style: TextStyle(
                                  fontSize: 14.0, fontWeight: FontWeight.w300)),
                        ])),
                        trailing: RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                              text: '30',
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.w500)),
                          TextSpan(
                            text: ' / 24° ',
                          )
                        ])),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
