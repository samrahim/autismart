import 'package:autismart/const/const.dart';
import 'package:flutter/material.dart';

class SeventhPage extends StatelessWidget {
  const SeventhPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Positioned(
            top: MediaQuery.of(context).size.height / 16,
            left: 26,
            child: Container(
              margin: const EdgeInsets.all(20),
              height: 40,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(28),
                ),
                color: Color.fromARGB(255, 229, 191, 54),
              ),
              width: 40,
            )),
        Positioned(
            top: MediaQuery.of(context).size.height / 18,
            right: 26,
            child: Image.asset(
              "images/pink_ball.png",
              height: 44,
              width: 45,
            )),
        const Column(
          children: [
            SizedBox(height: 24),
            Text(
              'Reviewes',
              style: TextStyle(
                  fontFamily: 'BoldenVan demo',
                  fontSize: 26,
                  color: blueAccentColor),
            ),
          ],
        ),
        Positioned(
            bottom: MediaQuery.of(context).size.height / 25,
            left: 20,
            child: Image.asset(
              'images/yellow.png',
              height: 41,
              width: 41,
            )),
      ],
    );
  }
}
