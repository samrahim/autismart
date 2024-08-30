import 'package:autismart/const/const.dart';
import 'package:autismart/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SixthPage extends StatelessWidget {
  const SixthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Positioned(
            top: MediaQuery.of(context).size.height / 20,
            right: 26,
            child: Image.asset(
              "images/purple.png",
              height: 44,
              width: 45,
            )),
        Column(
          children: [
            const Text(
              'Benefits of',
              style: TextStyle(
                  fontFamily: 'BoldenVan demo',
                  fontSize: 26,
                  color: blueAccentColor),
            ),
            const Text(
              'AutiSmartWatch',
              style: TextStyle(
                  fontFamily: 'BoldenVan demo',
                  fontSize: 26,
                  color: blueAccentColor),
            ),
            Image.asset(
              'images/star_icon.png',
              width: 170,
              height: 80,
            ),
            const Text('Simplify Daily Tasks',
                style: TextStyle(
                    color: blue, fontSize: 22, fontWeight: FontWeight.w600)),
            const Text('Effortlessly manage routines with '),
            const Text('our smart watch'),
            Image.asset('images/verify_icon.png', width: 80, height: 80),
            const Text('Empower Independence',
                style: TextStyle(
                    color: blue, fontSize: 22, fontWeight: FontWeight.w600)),
            const Text('Support your child’s autonomy'),
            const Text('with ease'),
            Image.asset(
              'images/3d_hand_icon.png',
              width: 118,
              height: 110,
            ),
            const Text('Headline: Interactive Prompts',
                style: TextStyle(
                    letterSpacing: 0,
                    color: blue,
                    fontSize: 22,
                    fontWeight: FontWeight.w600)),
            const Text('Subheadline: Engage your child in a fun'),
            const Text('and productive way'),
          ],
        ),
        Positioned(
            bottom: MediaQuery.of(context).size.height / 30,
            left: 0,
            child: Image.asset(
              'images/yellow.png',
              height: 41,
              width: 41,
            )),
      ],
    );
  }
}
//