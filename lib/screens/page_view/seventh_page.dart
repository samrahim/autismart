import 'package:autismart/const/const.dart';
import 'package:autismart/widgets/widgets.dart';

import 'package:flutter/material.dart';

class SeventhPage extends StatefulWidget {
  const SeventhPage({super.key});

  @override
  State<SeventhPage> createState() => _SeventhPageState();
}

class _SeventhPageState extends State<SeventhPage> {
  ScrollController controller = ScrollController();
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
        Column(
          children: [
            const SizedBox(height: 24),
            const Text(
              'Reviewes',
              style: TextStyle(
                  fontFamily: 'BoldenVan demo',
                  fontSize: 26,
                  color: blueAccentColor),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 8),
            const CustomListView(),
            const SizedBox(height: 16),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.arrow_back,
                  color: blueAccentColor,
                ),
                SizedBox(width: 16),
                Icon(Icons.arrow_forward, color: blueAccentColor)
              ],
            )
          ],
        ),
        Positioned(
            bottom: MediaQuery.of(context).size.height / 10,
            left: 20,
            child: Image.asset(
              'images/purple.png',
              height: 41,
              width: 41,
            )),
        Positioned(
            bottom: MediaQuery.of(context).size.height / 16,
            left: 100,
            child: Image.asset(
              'images/yellow.png',
              height: 31,
              width: 31,
            )),
        Positioned(
            bottom: MediaQuery.of(context).size.height / 14,
            right: 20,
            child: CustomDesign(height: 30, width: 30, color: purpleAccent)),
      ],
    );
  }
}
