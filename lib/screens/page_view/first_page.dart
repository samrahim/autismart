import 'package:autismart/const/const.dart';
import 'package:autismart/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Positioned(
            top: 80,
            right: 30,
            child: Image.asset(
              'images/yellow.png',
              height: 50,
              width: 50,
            )),
        Positioned(
            top: 140,
            left: 30,
            child: Image.asset(
              'images/purple.png',
              height: 50,
              width: 50,
            )),
        const Column(
          children: [
            SizedBox(height: 24),
            Text(
              'Empower Your Child’s ',
              style: TextStyle(
                  fontFamily: 'BoldenVan demo',
                  fontSize: 26,
                  color: blueAccentColor),
            ),
            SizedBox(height: 5),
            Text(
              'Independence',
              style: TextStyle(
                  fontFamily: 'BoldenVan demo',
                  fontSize: 26,
                  color: blueAccentColor),
            ),
            SizedBox(height: 8),
            Text('Discover how our smart watch supports'),
            Text('daily routines for autistic children'),
            SizedBox(height: 60),
          ],
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 3.2,
          left: 20,
          child: Container(
            decoration: const BoxDecoration(
                color: purple,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(300),
                    bottomRight: Radius.circular(100),
                    topLeft: Radius.circular(60),
                    bottomLeft: Radius.circular(60))),
            height: MediaQuery.of(context).size.height / 2.4,
            width: MediaQuery.of(context).size.width / 1.2,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 3.45,
          right: 20,
          child: Container(
            decoration: const BoxDecoration(
                color: blue,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(60),
                    topRight: Radius.circular(180),
                    topLeft: Radius.circular(60),
                    bottomLeft: Radius.circular(60))),
            height: MediaQuery.of(context).size.height / 2.4,
            width: MediaQuery.of(context).size.width / 1.2,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 3.39,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(180),
                topLeft: Radius.circular(70),
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60)),
            child: Image.asset(
              'images/first_image.png',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height / 2.4,
              width: MediaQuery.of(context).size.width / 1.2,
            ),
          ),
        ),
        Positioned(
            top: 190,
            right: 30,
            child: CustomDesign(height: 40, width: 40, color: blue)),
        Positioned(
            top: MediaQuery.of(context).size.height / 1.38,
            left: 0,
            child: CustomDesign(height: 40, width: 40, color: purple)),
        Positioned(
            top: MediaQuery.of(context).size.height / 1.3,
            right: 100,
            child: Image.asset(
              'images/purple.png',
              height: 30,
              width: 30,
            )),
      ],
    );
  }
}
