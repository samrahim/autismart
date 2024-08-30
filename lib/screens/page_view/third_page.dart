import 'package:autismart/const/const.dart';
import 'package:autismart/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Positioned(
            top: MediaQuery.of(context).size.height / 16,
            right: 26,
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
            top: MediaQuery.of(context).size.height / 5.5,
            left: 16,
            child: CustomDesign(height: 40, width: 40, color: blue)),
        Column(
          children: [
            const SizedBox(height: 24),
            const Text(
              'Stay On Track ',
              style: TextStyle(
                  fontFamily: 'BoldenVan demo',
                  fontSize: 26,
                  color: blueAccentColor),
            ),
            const SizedBox(height: 5),
            const Text(
              'Effortlessly',
              style: TextStyle(
                  fontFamily: 'BoldenVan demo',
                  fontSize: 26,
                  color: blueAccentColor),
            ),
            const SizedBox(height: 8),
            const Text('Our smart watch simplifies daily tasks for '),
            const Text('autistic children'),
            SizedBox(height: MediaQuery.of(context).size.height / 2.3),
            const Text("AutiSmart provides user-friendly features"),
            const Text('to help children manage their routines'),
            const Text('independently'),
          ],
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 4,
          left: 20,
          child: Container(
            decoration: const BoxDecoration(
                color: yellow,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(190),
                    bottomRight: Radius.circular(80),
                    topLeft: Radius.circular(60),
                    bottomLeft: Radius.circular(60))),
            height: MediaQuery.of(context).size.height / 2.75,
            width: MediaQuery.of(context).size.width / 1.2,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 4.25,
          right: 20,
          child: Container(
            decoration: const BoxDecoration(
                color: blueWhite,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(60),
                    topRight: Radius.circular(60),
                    topLeft: Radius.circular(60),
                    bottomLeft: Radius.circular(130))),
            height: MediaQuery.of(context).size.height / 2.8,
            width: MediaQuery.of(context).size.width / 1.2,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 4,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(60),
                topLeft: Radius.circular(56),
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(60)),
            child: Image.asset(
              'images/third_image.png',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height / 2.8,
              width: MediaQuery.of(context).size.width / 1.2,
            ),
          ),
        ),
        Positioned(
            bottom: MediaQuery.of(context).size.height / 10,
            left: 20,
            child: Image.asset(
              'images/purple.png',
              height: 45,
              width: 45,
            )),
        Positioned(
            bottom: MediaQuery.of(context).size.height / 8,
            right: 16,
            child: CustomDesign(height: 40, width: 40, color: green)),
      ],
    );
  }
}
