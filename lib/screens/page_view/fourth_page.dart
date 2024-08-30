import 'package:autismart/const/consts.dart';
import 'package:autismart/widgets/widgets.dart';
import 'package:flutter/material.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Positioned(
            top: MediaQuery.of(context).size.height / 15,
            right: 26,
            child: Container(
              margin: const EdgeInsets.all(20),
              height: 40,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(28),
                ),
                color: green,
              ),
              width: 40,
            )),
        Positioned(
            top: MediaQuery.of(context).size.height / 17,
            left: 16,
            child: Image.asset('images/green.png', height: 40, width: 40)),
        Column(
          children: [
            const SizedBox(height: 24),
            const Text(
              'Streamline Daily',
              style: TextStyle(
                  fontFamily: 'BoldenVan demo',
                  fontSize: 26,
                  color: blueAccentColor),
            ),
            const SizedBox(height: 5),
            const Text(
              'Tasks',
              style: TextStyle(
                  fontFamily: 'BoldenVan demo',
                  fontSize: 26,
                  color: blueAccentColor),
            ),
            const SizedBox(height: 8),
            const Text('Effortlessely mannage routines with our'),
            const Text('smart watch'),
            SizedBox(height: MediaQuery.of(context).size.height / 2.13),
            const Text("AutiSmart provides user-friendly features"),
            const Text('for independent nvigation'),
          ],
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 4.2,
          left: 20,
          child: Container(
            decoration: const BoxDecoration(
                color: yellow2,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(60),
                    bottomRight: Radius.circular(60),
                    topLeft: Radius.circular(120),
                    bottomLeft: Radius.circular(50))),
            height: MediaQuery.of(context).size.height / 2.75,
            width: MediaQuery.of(context).size.width / 1.2,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 3.8,
          right: 20,
          child: Container(
            decoration: const BoxDecoration(
                color: green,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(60),
                    topRight: Radius.circular(60),
                    topLeft: Radius.circular(120),
                    bottomLeft: Radius.circular(40))),
            height: MediaQuery.of(context).size.height / 2.8,
            width: MediaQuery.of(context).size.width / 1.2,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 4,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(60),
                topLeft: Radius.circular(120),
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(60)),
            child: Image.asset(
              'images/fourth_image.png',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height / 2.8,
              width: MediaQuery.of(context).size.width / 1.2,
            ),
          ),
        ),
        Positioned(
            bottom: MediaQuery.of(context).size.height / 4.7,
            left: 20,
            child: CustomDesign(height: 40, width: 40, color: blueAccentColor)),
        Positioned(
            bottom: MediaQuery.of(context).size.height / 8,
            right: 16,
            child: CustomDesign(height: 40, width: 40, color: purple)),
        Positioned(
            bottom: MediaQuery.of(context).size.height / 12,
            left: 30,
            child: Image.asset('images/yellow.png', height: 40, width: 40)),
      ],
    );
  }
}
